class Event < ActiveRecord::Base
  before_create :set_when

  attr_accessor :day_of_week,
                :start_hour,
                :end_hour

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
