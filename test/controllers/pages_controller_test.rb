require 'test_helper'

require 'twilio-ruby'


# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token

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
