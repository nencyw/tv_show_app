task :email_notification_reminder => :environment do
  User.reminder_notification
end