class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
  acts_as_favoritor

  def self.reminder_notification
    @fav_shows = Favorite.favorite_list
    @fav_shows.each do |fav_show|
      show_timing = fav_show.favoritable.timing.strftime('%I:%M %p').to_time
      current_time = Time.now.strftime('%I:%M %p').to_time
      time_difference = (show_timing - current_time) / 60
      if time_difference == 30
        p 'Running'
        UserMailer.send_email_notification(fav_show.favoritor, fav_show.favoritable).deliver_now
      end
    end
  end
end
