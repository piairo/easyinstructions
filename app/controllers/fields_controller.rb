class FieldsController < ApplicationController

  def index         # GET /fields
    @fields = Field.all.sort_by { |a| a.name }
  end

  def show          # GET /fields/:id
    @field = Field.find(params[:id])
    @field_user_instructions = Instruction.where(user_id: current_user, field_id: @field.id).sort_by { |a| a.id }
    @field_public_instructions = Instruction.where(private: false, field_id: @field.id).sort_by { |a| a.id }
    # redirect_to instructions_path(@field)


  end

  def instruction_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:field).permit(:name)
  end
end
