
class PagesController < ApplicationController
  def contact

  end

  def about
  end

  def home


  end

 def homes_for_booking
    @flat = Flat.where(name: params[:flat_name])[0]
  end

end

 def arrival_params
    params.require(:flat).permit(:name)
  end
