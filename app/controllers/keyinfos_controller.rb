class KeyinfosController < ApplicationController

  before_action :set_flat

  def show
    @keyinfo = Keyinfo.where(id: params[:flat_id])[0]
  end

  def new           # GET /flats/:id/keyinfos/new(.:format)
    @arrival = Arrival.new

  end

  def create        # POST /keyinfos
    @arrival = Arrival.new(arrival_params)
    @arrival.flat = @flat

    if @arrival.save
      redirect_to flat_arrivals_path(@flat)
    else
      render :new
    end
  end

  def edit          # GET /flats/:id/keyinfos/:id/edit(.:format)
    @arrival = Arrival.find(params[:id])
  end

  def update        # PATCH /flats/:id/keyinfos/:id(.:format)
    @arrival = Arrival.find(params[:id])
    @arrival.update(arrival_params)
    redirect_to flat_arrivals_path(@flat, @arrival)
  end

  def destroy       # DELETE /flats/:id/keyinfos/:id(.:format)
    @arrival = Arrival.find(params[:id])
    @arrival.destroy
    redirect_to flat_arrivals_path(@flat, @arrival)
  end


private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def keyinfo_params
    params.require(:keyinfo).permit(:checkout, :wifiname, :wificode, :contact)
  end
end
