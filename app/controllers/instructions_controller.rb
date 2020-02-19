class InstructionsController < ApplicationController

  def index         # GET /instructions
    @user_instructions = Instruction.where(user_id: current_user)
    @public_instructions = Instruction.where(private: false).sort_by { |a| a.id }
    @all_instructions = Instruction.all.sort_by { |a| a.id }
  end

  def show          # GET /instructions/:id
    @instruction = Instruction.find(params[:id])
    # @steps = Step.where(instruction_id: params[:id])
     redirect_to instruction_steps_path(@instruction)
  end

  def new           # GET /instructions/new
    @user = current_user
    @instruction = Instruction.new
  end

  def create        # POST /instructions
    @instruction = Instruction.new(instruction_params)
    @instruction.name = @instruction.name.downcase
    @instruction.user = current_user

    if @instruction.save
      redirect_to instruction_path(@instruction)
    else
      render :new
    end
  end

  def edit          # GET /instructions/:id/edit
    @instruction = Instruction.find(params[:id])
  end

  def update        # PATCH /instructions/:id
    @instruction = Instruction.find(params[:id])
    @instruction.update(instruction_params)
    redirect_to instruction_path(@instruction)
  end

  def destroy       # DELETE /instructions/:id
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    redirect_to instruction_path(@instruction)
  end

private

  def instruction_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:instruction).permit(:name, :address, :private)
  end
end


