class Event < ActiveRecord::Base

  attr_accessor :start_date,
                :start_hour,
                :end_hour

  before_create :set_when
  before_validation :convert_hours

  belongs_to :user
  has_many :attendees

  validates :user_id, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum:255 }
  validates :venue, presence: true, length: { minimum: 3, maximum:255 }
  validates :address, presence: true, length: { minimum: 3, maximum:255 }
  validates :start_hour, presence: true, inclusion: { in: (0..23) }
  validates :end_hour, presence: true, inclusion: { in: (0..23) },
                       numericality: { :greater_than => ->(event) { event.start_hour } }

  def start
    self.when.begin
  end

  def end
    self.when.end
  end

  private

  def convert_hours
    self.start_hour = start_hour.to_i
    self.end_hour = end_hour.to_i
  end

  def set_when
    date = set_date
    self.when = date_builder(date, start_hour)..date_builder(date, end_hour)
  end

  def set_date
    Date.strptime(start_date, "%Y-%m-%d")
  end

  def date_builder(date_obj, hour)
    DateTime.new(date_obj.year,
    date_obj.month,
    date_obj.day,
    hour.to_i,
    0,
    0)
  end

end
