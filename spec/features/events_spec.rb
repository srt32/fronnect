require 'spec_helper'

describe "creating an event" do
  before :all do
    @user = User.create(:email => "foo@bar.com",
                        :password => "foobar!",
                        :password_confirmation => "foobar!")
  end

  it 'does not allow guest to create event' do
    visit new_event_path
    expect(page).to have_content 'You need to sign in'
  end

  it 'allows logged in user to create an event' do
    # sign in the user
    visit new_event_path
    fill_in 'Title',       with: 'Big thing'
    fill_in 'Description', with: 'it is indeed'
    fill_in 'Venue',       with: 'my house'
    fill_in 'Address',     with: 'down the street'
    choose('event_day_of_week_5')
    select('2', from: 'Start hour')
    select('4', from: 'End hour')

    click_on 'Create Event'
    expect(page).to have_content 'Big thing'
  end
end
