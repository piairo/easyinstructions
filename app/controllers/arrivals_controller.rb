require 'twilio-ruby'

class ArrivalsController < ApplicationController
  before_action :set_arrival, only: [:show, :edit, :destroy]
  before_action :set_flat

  def send_sms
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
      @arrivals = Arrival.where(flat_id: params[:flat_id]).sort_by { |a| a.position }

  end

  def sort
    params[:arrival].each_with_index do |id, index|
      Arrival.where(id: id).update_all(position: index + 1)
    end

    head :ok
  end


  def show

  end

  def new           # GET /flats/:flat_id/arrivals/new(.:format)
    @arrival = Arrival.new

  end

  def create        # POST /flats/:flat_id/arrivals(.:format)
    @arrival = Arrival.new(arrival_params)
    @arrival.flat = @flat

    if @arrival.save
      redirect_to flat_arrivals_path(@flat)
    else
      render :new
    end
  end

  def edit          # GET /flats/:flat_id/arrivals/:position/edit(.:format)

  end

  def update        # PATCH /flats/:flat_id/arrivals/:position(.:format)
    @arrival = Arrival.where(flat_id: params[:flat_id], id: params[:id])[0]
    @arrival.update(arrival_params)
    redirect_to flat_arrivals_path(@flat, @arrival)
  end

  def destroy       # DELETE /flats/:flat_id/arrivals/:position(.:format)
    @arrival.destroy
    redirect_to flat_arrivals_path(@flat, @arrival)
  end

private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end


  def set_arrival
    @arrival = Arrival.where(flat_id: params[:flat_id], position: params[:position])[0]
  end

  def arrival_params
    params.require(:arrival).permit(:position, :description, :photo, :status, :photo_cache)
  end

end


