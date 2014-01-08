class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events
  has_many :attendees
  has_many :rsvps, through: :attendees, source: :event

  def rsvps_old
    #attendees = Attendee.where(:user_id => id)
    #Event.where(:id => attendees.map(&:event_id))
    Event.where(:id => Attendee.where(:user_id => id).map(&:event_id))
  end
end
