class Event < ActiveRecord::Base
  before_create :set_when

  attr_accessor :day_of_week,
                :start_hour,
                :end_hour

  validates :day_of_week, presence: true, inclusion: { in: [0, 5, 6],
    message: "Please choose Friday, Saturday, or Sunday" }
  validates :user_id, presence: true
  validates :title, presence: true, length: { minimum: 5, maximum:255 }
  validates :description, presence: true, length: { minimum: 5, maximum:1000 }
  validates :venue, presence: true, length: { minimum: 5, maximum:255 }
  validates :address, presence: true, length: { minimum: 5, maximum:255 }
  validates :start_hour, presence: true, inclusion: { in: (0..23) }
  validates :end_hour, presence: true, inclusion: { in: (0..23) }

  private

  def set_when
    date = set_date
    self.when = DateTime.new(date.year,
                             date.month,
                             date.day,
                             start_hour,
                             0,
                             0)..DateTime.new(date.year,
                                              date.month,
                                              date.day,
                                              end_hour,
                                              0,
                                              0)
  end

  def set_date
    DateTime.now.next_day(day_of_week)
  end

end
