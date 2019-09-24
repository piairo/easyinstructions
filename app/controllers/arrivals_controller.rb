require 'twilio-ruby'

class ArrivalsController < ApplicationController

  def send_sms
  @flat = Flat.find(params[:flat_id])
  @location = request.location.city
  # put your own credentials here
  account_sid = 'ACe8db3bae886de70e3b2a089489949a30'
  auth_token = 'da03289f9981a213e3c430beea95ad13'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.api.account.messages.create(
  from: '+441670432062',
  to: '+447484723518',
  body: "#{@flat.name} trigger from: '#{@location}'"
  )
  redirect_to flat_arrival_path(1, 6)
  end

  def index         # GET /flats/:flat_id/arrivals
      @flat = Flat.find(params[:flat_id])
      @arrivals = Arrival.where(flat_id: params[:flat_id])
  end

  def show          # !!MY FIRST PERSO QUICK APP!!:-|
                    # GET /flats/:flat_id/arrivals/:id(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrivals = @flat.arrivals
    @arrival = @arrivals.where(number: params[:number])[0]
     # automatic sms for chocolate
    if @flat.name == "chocolate" && @arrival.number == 5
    send_sms
    end

  end

  def new           # GET /flats/:flat_id/arrivals/new(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrival = Arrival.new

  end

  def create        # POST /arrivals
    @flat = Flat.find(params[:flat_id])
    @arrival = Arrival.new(arrival_params)
    @arrival.flat = @flat

    if @arrival.save
      redirect_to flat_arrivals_path(@flat)
    else
      render :new
    end
  end

  def edit          # GET /flats/:flat_id/arrivals/:id/edit(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrivals = @flat.arrivals
    @arrival = @arrivals.where(number: params[:number])[0]
  end

  def update        # PATCH /flats/:flat_id/arrivals/:id(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrivals = @flat.arrivals
    @arrival = @arrivals.where(number: params[:number])[0]
    @arrival.update(arrival_params)
    redirect_to flat_arrivals_path(@flat, @arrival)
  end

  def destroy       # DELETE /flats/:flat_id/arrivals/:id(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrivals = @flat.arrivals
    @arrival = @arrivals.where(number: params[:number])[0]
    @arrival.destroy
    redirect_to flat_arrivals_path(@flat, @arrival)
  end

private

  def arrival_params
    params.require(:arrival).permit(:number, :description, :photo, :status)
  end


end


