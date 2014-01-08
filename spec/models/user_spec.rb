require 'spec_helper'

describe User do
  let(:valid_attributes) { { :user_id => 1,
                             :title => "party!",
                             :description => "new years",
                             :venue => "my house",
                             :address => "down the street 4",
                             :start_hour => '18',
                             :end_hour => '23' } }

  it "lists events with an rsvp" do
    event1 = Event.create! valid_attributes
    event2 = Event.create! valid_attributes
    user = User.create(:email => "foo@bar.com",
                                                     :password => "foobar!!",
                                                     :password_confirmation => "foobar!!")
    event1.attendees.create(:user_id => user.id, :event_id => event1.id)
    rsvps = user.rsvps
    rsvps.should eq([event1])

  end
end
