class KeyinfosController < ApplicationController

  before_action :set_instruction

  def show
    @keyinfo = Keyinfo.where(id: params[:instruction_id])[0]
    # perso for chocolate
    @netflix = Instruction.where(name: "netflix")[0]
    @hotwater = Instruction.where(name: "hot water")[0]
    @closingdoor = Instruction.where(name: "closing door")[0]

  end

  def new           # GET /instructions/:id/keyinfos/new(.:format)
    @step = Step.new

  end

  def create        # POST /keyinfos
    @step = Step.new(step_params)
    @step.instruction = @instruction

    if @step.save
      redirect_to instruction_steps_path(@instruction)
    else
      render :new
    end
  end

  def edit          # GET /instructions/:id/keyinfos/:id/edit(.:format)
    @step = Step.find(params[:id])
  end

  def update        # PATCH /instructions/:id/keyinfos/:id(.:format)
    @step = Step.find(params[:id])
    @step.update(step_params)
    redirect_to instruction_steps_path(@instruction, @step)
  end

  def destroy       # DELETE /instructions/:id/keyinfos/:id(.:format)
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to instruction_steps_path(@instruction, @step)
  end


private

  def set_instruction
    @instruction = Instruction.find(params[:id])
  end

  def keyinfo_params
    params.require(:keyinfo).permit(:checkout, :wifiname, :wificode, :contact)
  end
end
