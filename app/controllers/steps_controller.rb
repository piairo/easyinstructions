class StepsController < ApplicationController


  def show
    steps = Step.where(flat_id: 1)
    selectstep = steps.where(number: params[:number])
    @step = selectstep[0]
  end
end



private

def step_params
    params.require(:step).permit(:number, :description, :picture_url, :status, :flat_id)
  end

