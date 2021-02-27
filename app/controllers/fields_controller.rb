class FieldsController < ApplicationController

  def index         # GET /fields
    @fields = Field.all.sort_by { |a, b| b <=> a  }

  end

  def show          # Redirect to 'instructions#index'
    @field = Field.find(params[:id])
    redirect_to field_instructions_path(@field)

  end


  def instruction_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:field).permit(:name)
  end
end
