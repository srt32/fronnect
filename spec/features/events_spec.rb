require 'spec_helper'

describe "creating an event", :js => true do
  before :each do
    @user = User.create(:email => "foo@bar.com",
                        :password => "foobar!!",
                        :password_confirmation => "foobar!!")
  end

  it 'does not allow guest to create event' do
    visit new_event_path
    expect(page).to have_content 'You need to sign in'
  end

  it 'allows logged in user to create an event' do
    # sign in the user
    visit new_user_session_path
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: 'foobar!!'
    click_on 'Sign in'
    expect(page).to have_content 'Signed in'

    visit new_event_path
    fill_in 'Title',       with: 'Big thing'
    fill_in 'Description', with: 'it is indeed'
    fill_in 'Venue',       with: 'my house'
    fill_in 'Address',     with: 'down the street'
    find(".date_calendar").click
    click_link('28')
    within('.actions') do
      click_on 'Create Event'
    end
    expect(page).to have_content 'Big thing'
  end
end
