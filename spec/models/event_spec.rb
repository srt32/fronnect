require 'pry'
require 'spec_helper'

describe Event do
  let(:valid_attributes) { { :user_id => 1,
                             :title => "party!",
                             :description => "new years",
                             :venue => "my house",
                             :address => "down the street 4",
                             :starts_at => "2014-01-26 12:00:00" }}

  describe "creates valid event" do
    it "has given params" do
      event = Event.create! valid_attributes
      event.user_id.should eq(1)
      event.title.should eq("party!")
      event.description.should eq("new years")
      event.venue.should eq("my house")
      event.address.should eq("down the street 4")
      
      event.starts_at.should eq("2014-01-26 12:00:00")
    end
  end

  describe "filter events" do
    it "hides historical events" do
      event1 = Event.create valid_attributes.merge(:starts_at => 5.days.ago.strftime('%Y-%m-%d'))
      Event.future_events.should be_empty
      event2 = Event.create valid_attributes.merge(:starts_at => 2.months.from_now.strftime('%Y-%m-%d'))
      Event.future_events.should_not be_empty
    end
  end
end
