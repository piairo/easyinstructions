class StepsController < ApplicationController

require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACe8db3bae886de70e3b2a089489949a30'
auth_token = 'da03289f9981a213e3c430beea95ad13'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token


  def show
    steps = Step.where(flat_id: 1)
    selectstep = steps.where(number: params[:number])
    @step = selectstep[0]
  end

def send_sms
  @client.api.account.messages.create(
  from: '+14159341234',
  to: '+16105557069',
  body: 'Hey there!'
)
    do
      root_path
    end
end


end



private

def step_params
    params.require(:step).permit(:number, :description, :picture_url, :status, :flat_id)
  end

