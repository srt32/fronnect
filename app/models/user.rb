class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events

  def rsvps
    #attendees = Attendee.where(:user_id => id)
    #Event.where(:id => attendees.map(&:event_id))
    Event.where(:id => Attendee.where(:user_id => id).map(&:event_id))
  end

  def attendee?(event)
    Attendee.exists?(event_id: event.id, user_id: self.id)
  end
end
