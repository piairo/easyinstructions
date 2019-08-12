require 'twilio-ruby'

class ArrivalsController < ApplicationController

  def show
    @flat = Flat.find(1)
    arrivals = Arrival.where(flat_id: 1)
    selectarrival = arrivals.where(number: params[:number])
    @arrival = selectarrival[0]
    @location = request.safe_location.city
  end

  def send_sms
  # put your own credentials here
  account_sid = 'ACe8db3bae886de70e3b2a089489949a30'
  auth_token = 'da03289f9981a213e3c430beea95ad13'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.api.account.messages.create(
  from: '+441670432062',
  to: '+447484723518',
  body: 'chocolate trigger from:  location #{@location}'
  )
  redirect_to arrival_path(6)
  end

end



private

def arrival_params
    params.require(:arrival).permit(:number, :description, :picture_url, :status, :flat_id)
  end

