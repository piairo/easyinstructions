class KeyinfosController < ApplicationController

  def show
    # @flat = Flat.find(1)
    # keyinfos = Keyinfo.where(flat_id: 1)
    # selectkeyinfo = keyinfos.where(flat_id: params[:flat_id])
    # @keyinfo = selectkeyinfo[0]
    @flat = Flat.where(name: params[:flat_name])[0]
    @keyinfo = Keyinfo.where(flat_id: @flat.id)[0]
  end

  def new           # GET /flats/:flat_id/arrivals/new(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrival = Arrival.new

  end

  def create        # POST /arrivals
    @arrival = Arrival.new(arrival_params)
    @flat = Flat.find(params[:flat_id])
    @arrival.flat = @flat

    if @arrival.save
      redirect_to flat_arrivals_path(@flat)
    else
      render :new
    end
  end

  def edit          # GET /flats/:flat_id/arrivals/:id/edit(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrival = Arrival.find(params[:id])
  end

  def update        # PATCH /flats/:flat_id/arrivals/:id(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrival = Arrival.find(params[:id])
    @arrival.update(arrival_params)
    redirect_to flat_arrivals_path(@flat, @arrival)
  end

  def destroy       # DELETE /flats/:flat_id/arrivals/:id(.:format)
    @flat = Flat.find(params[:flat_id])
    @arrival = Arrival.find(params[:id])
    @arrival.destroy
    redirect_to flat_arrivals_path(@flat, @arrival)
  end


private

  def keyinfo_params
    params.require(:keyinfo).permit(:checkout, :wifiname, :wificode, :contact)
  end
end
