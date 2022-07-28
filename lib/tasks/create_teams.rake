desc "昇格チームを追加"
task :create_promoted_team => :environment do
  puts "スタート"
  Team.create(
    [
      {
        id: 3,
        name: 'ボーンマス',
        logo: 'https://media.api-sports.io/football/teams/35.png',
        league_id: 1,
        api_team_id: 35
      },
      {
        id: 8,
        name: 'フラム',
        logo: 'https://media.api-sports.io/football/teams/36.png',
        league_id: 1,
        api_team_id: 36
      },
      {
        id: 20,
        name: 'ノッティンガム',
        logo: 'https://media.api-sports.io/football/teams/65.png',
        league_id: 1,
        api_team_id: 65
      },
      {
        id: 22,
        name: 'トゥールーズ',
        logo: 'https://media.api-sports.io/football/teams/96.png',
        league_id: 2,
        api_team_id: 96
      },
      {
        id: 38,
        name: 'アジャクシオ',
        logo: 'https://media.api-sports.io/football/teams/98.png',
        league_id: 2,
        api_team_id: 98
      },
      {
        id: 40,
        name: 'オセール',
        logo: 'https://media.api-sports.io/football/teams/108.png',
        league_id: 2,
        api_team_id: 108
      },
      {
        id: 55,
        name: 'ブレーメン',
        logo: 'https://media.api-sports.io/football/teams/162.png',
        league_id: 3,
        api_team_id: 162
      },
      {
        id: 57,
        name: 'シャルケ04',
        logo: 'https://media.api-sports.io/football/teams/174.png',
        league_id: 3,
        api_team_id: 174
      },
      {
        id: 62,
        name: 'クレモネーゼ',
        logo: 'https://media.api-sports.io/football/teams/520.png',
        league_id: 4,
        api_team_id: 520
      },
      {
        id: 65,
        name: 'レッチェ',
        logo: 'https://media.api-sports.io/football/teams/867.png',
        league_id: 4,
        api_team_id: 867
      },
      {
        id: 78,
        name: 'モンツァ',
        logo: 'https://media.api-sports.io/football/teams/1579.png',
        league_id: 4,
        api_team_id: 1579
      },
      {
        id: 86,
        name: 'ジローナ',
        logo: 'https://media.api-sports.io/football/teams/547.png',
        league_id: 5,
        api_team_id: 547
      },
      {
        id: 89,
        name: 'バリャドリード',
        logo: 'https://media.api-sports.io/football/teams/720.png',
        league_id: 5,
        api_team_id: 720
      },
      {
        id: 93,
        name: 'アルメリア',
        logo: 'https://media.api-sports.io/football/teams/723.png',
        league_id: 5,
        api_team_id: 723
      }
    ]
  )
  puts "終了"
end
