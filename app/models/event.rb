class Event < ActiveRecord::Base

  belongs_to :user
  has_many :attendees

  validates :user_id, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum:255 }
  validates :venue, presence: true, length: { minimum: 3, maximum:255 }

  def self.future_events
    where('start_date >= ?',Time.now)
  end

end
