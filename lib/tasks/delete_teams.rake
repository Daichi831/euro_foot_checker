desc "降格チームを削除"
task :delete_demoted_team => :environment do
  puts "スタート"
  [3, 8, 20, 22, 38, 40, 55, 57, 62, 65, 78, 86, 89, 93].each do |team_id|
    Team.find(team_id).destroy
  end
  puts "終了"
end
