require 'pry'
require 'spec_helper'

describe Event do
  let(:valid_attributes) { { :user_id => 1,
                             :title => "party!",
                             :description => "new years",
                             :venue => "my house",
                             :address => "down the street 4",
                             :start_date => '2014-01-20',
                             :start_hour => '18',
                             :end_hour => '23' } }

  describe "creates valid event" do
    it "has given params" do
      event = Event.create! valid_attributes
      event.user_id.should eq(1)
      event.title.should eq("party!")
      event.description.should eq("new years")
      event.venue.should eq("my house")
      event.address.should eq("down the street 4")
      #date = DateTime.now.next_day(6)
      date = Date.strptime(valid_attributes[:start_date], "%Y-%m-%d")
      event.when.should eq(DateTime.new(date.year,
                                        date.month,
                                        date.day,
                                        18,
                                        0,
                                        0)..DateTime.new(date.year,
                                                         date.month,
                                                         date.day,
                                                         23,
                                                         0,
                                                         0))
    end
  end

  # tests for validations
  describe "with invalid attributes" do

    it "rejects start / end hour other than 0..23" do
      event = Event.create valid_attributes.merge(:start_hour => '25')
      event.should_not be_valid
    end

    it "rejects end_hour before start_hour" do
      event = Event.create valid_attributes.merge(:start_hour => '20',
                                                  :end_hour => '18')
    end

  end

  describe "filter events" do
    it "hides historical events" do
      event1 = Event.create valid_attributes.merge(:start_date => 1.days.ago.strftime('%Y-%m-%d'))
      Event.future_events.should be_empty
      event2 = Event.create valid_attributes.merge(:start_date => 2.months.from_now.strftime('%Y-%m-%d'))
      Event.future_events.should_not be_empty
    end
  end

  # Other features
  #   day_of_week method
  #   start_hour
  #   end_hour
  #   belongs_to :user
  #   user has_many :events

end
