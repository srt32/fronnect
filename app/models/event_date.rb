class EventDate

  attr_reader :start_date, :hour, :minutes

  def initialize(params)
    @start_date = params.delete('starts_at')
    @hour = params.delete('starts_at(4i)')
    @minutes = params.delete('starts_at(5i)')
  end

  def to_timestamp
    Time.new(date.year, date.month, date.day, hour, minutes)
  end

  def date
    @date ||= Date.parse(start_date)
  end
end
