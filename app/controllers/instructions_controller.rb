class InstructionsController < ApplicationController
  before_action :set_field, only: [:index, :show, :edit, :update, :destroy, :new, :create]


  def index         # GET /instructions
    @user_instructions = Instruction.where(user_id: current_user, field_id: @field.id)
    @public_instructions = Instruction.where(private: false, field_id: @field.id).sort_by { |a| a.id }
    @all_instructions = Instruction.all.sort_by { |a| a.id }
  end

  def show          # GET /instructions/:id
    @instruction = Instruction.find(params[:id])
    # @steps = Step.where(instruction_id: params[:id])
     redirect_to field_instructions_path(@instruction)
  end

  def new           # GET /instructions/new
    @user = current_user
    @instruction = Instruction.new
    @title = "New "
  end

  def create        # POST /instruction
    @instruction = Instruction.new(instruction_params)
    @instruction.field_id = @field.id
    @instruction.name = @instruction.name.downcase
    @instruction.user = current_user
    @title = "Create "

    if @instruction.save
      redirect_to field_instructions_path(@field)
    else
      render :new
    end
  end

  def edit          # GET /instructions/:id/edit
    @instruction = Instruction.find(params[:id])
    @title = "Edit "
  end

  def update        # PATCH /instructions/:id
    @instruction = Instruction.find(params[:id])
    @instruction.update(instruction_params)
    redirect_to instruction_path(@instruction)
  end

  def destroy       # DELETE /instructions/:id
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    redirect_to field_instructions_path
    @title = "destroy"
  end

private

def set_field
    @field = Field.find(params[:field_id])
end


  def instruction_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:instruction).permit(:name, :address, :private)

  end
end


