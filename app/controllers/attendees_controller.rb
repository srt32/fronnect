class AttendeesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @attendee = @event.attendees.new(:user_id => current_user.id)
    @user = current_user
    UserMailer.rsvp_confirmation(@user, @event).deliver
    if @attendee.save
      redirect_to root_path, notice: "You're in!"
    else
      redirect_to @event
    end
  end

end
