class StepsController < ApplicationController

  def show
    @step = Step.find(params[:id])
  end


end



private

def step_params
    params.require(:step).permit(:step_id)
  end

