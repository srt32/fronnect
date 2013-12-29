require 'pry'
require 'spec_helper'

describe Event do
  let(:valid_attributes) { { :user_id => 1,
                             :title => "party!",
                             :description => "new years",
                             :venue => "my house",
                             :address => "down the street 4",
                             :day_of_week => 6,
                             :start_hour => 18,
                             :end_hour => 23 } }

  describe "creates valid event" do
    it "has given params" do
      event = Event.create! valid_attributes
      event.user_id.should eq(1)
      event.title.should eq("party!")
      event.description.should eq("new years")
      event.venue.should eq("my house")
      event.address.should eq("down the street 4")
      date = DateTime.now.next_day(6)
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
  #   day_of_week should be in 0, 5, 6
  #   all fields are required
  #   user_id should be in users table

end
