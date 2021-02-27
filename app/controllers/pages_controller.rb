
class PagesController < ApplicationController
  def contact

  end

  def about
  end

  def home
  end

 def homes_for_booking
    @field = Field.find(params[:id])
    @instruction = Instruction.where(name: params[:instruction_name])[0]
    @keyinfo = Keyinfo.where(instruction_id: @instruction.id)

  end

end

 def step_params
    params.require(:instruction).permit(:name)
  end
