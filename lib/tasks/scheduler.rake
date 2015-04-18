desc "This task is called by the Heroku scheduler add-on"

task :send_newsletters => :environment do
  User.send_newsletters
end
