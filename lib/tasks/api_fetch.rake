desc "APIからデータを取得"
task :get_data => :environment do
  puts "スタート！"

  require 'uri'
  require 'net/http'
  require 'openssl'
  require 'json'
  require 'date'

  league_numbers = [39, 61, 78, 135, 140]
  today = Date.current.strftime('%F')

  league_numbers.each do |number|
    url = URI("https://api-football-v1.p.rapidapi.com/v3/fixtures?league=#{number}&season=2022&date=#{today}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-key'] = Rails.application.credentials.foot_api[:access_key]
    request['x-rapidapi-host'] = 'api-football-v1.p.rapidapi.com'

    response = http.request(request)
    result = JSON.parse(response.body)
    unless result['response'].empty?

      result['response'].each_index do |n|
        match = Match.new

        next if result['response'][n]['fixture']['status']['short'] != 'FT'

        # 取得データをDBに保存
        match.date = result['response'][n]['fixture']['date']
        match.stadium = result['response'][n]['fixture']['venue']['name']

        match.home_team_score = result['response'][n]['goals']['home']
        match.away_team_score = result['response'][n]['goals']['away']

        api_home_id = result['response'][n]['teams']['home']['id']
        api_away_id = result['response'][n]['teams']['away']['id']
        # team_idをhome_team_id,away_team_idに挿入する
        match.home_team_id = Team.find_by(api_team_id: api_home_id).id
        match.away_team_id = Team.find_by(api_team_id: api_away_id).id
        match.save
      end
    end
  end

  puts "終了！"
end
