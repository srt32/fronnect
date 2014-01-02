module EventsHelper

  def start_time(date)
    date.strftime('%A, %b %d at %I:%M%p')
  end

end
