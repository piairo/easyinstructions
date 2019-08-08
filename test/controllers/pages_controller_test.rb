require 'test_helper'

require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACe8db3bae886de70e3b2a089489949a30'
auth_token = 'da03289f9981a213e3c430beea95ad13'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

end
