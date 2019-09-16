class FlatsController < ApplicationController

  def index         # GET /flats
    @flats = Flat.all
  end

  def show          # GET /flats/:id
    @flat = Flat.find(params[:id])
  end

  def new           # GET /flats/new
    @user = current_user
    @flat = Flat.new

  end

  def create        # POST /flats
    @flat = Flat.new(flat_params)
    @user = current_user
    @flat.user = @user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit          # GET /flats/:id/edit
    @flat = Flat.find(params[:id])
  end

  def update        # PATCH /flats/:id
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy       # DELETE /flats/:id
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flat_path(@flat)
  end

private

  def flat_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:flat).permit(:name, :address)
  end
end


