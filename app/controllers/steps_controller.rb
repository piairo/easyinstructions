require 'twilio-ruby'

class StepsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_step, only: [:show, :edit, :destroy]
  before_action :set_steps, only: [:index, :sort]
  before_action :set_instruction


  def send_sms
  @location = request.location.city
  # put your own credentials here
  account_sid = 'ACe8db3bae886de70e3b2a089489949a30'
  auth_token = 'da03289f9981a213e3c430beea95ad13'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.api.account.messages.create(
  from: '+441670432062',
  to: '+447484723518',
  body: "#{@instruction.name} trigger from: '#{@location}'"
  )
  redirect_to instruction_step_path(1, 6)
  end

  def index         # GET /instructions/:instruction_id/steps
      @steps = Step.where(instruction_id: params[:instruction_id]).sort_by { |a| a.position }
      @order  =  []
      @steps.each do |step| @order << step.position end
      # Old way (before gem act_as_list)
    # @steps = Step.order(instruction_id: params[:instruction_id]).sort_by { |a| a.position }
  end


  def show

  end

  def new           # GET /instructions/:instruction_id/steps/new(.:format)
    @step = Step.new

  end

  def create        # POST /instructions/:instruction_id/steps(.:format)
    @step = Step.new(step_params)
    @step.instruction = @instruction

    if @step.save
      redirect_to instruction_steps_path(@instruction)
    else
      render :new
    end
  end

  def edit          # GET /instructions/:instruction_id/steps/:position/edit(.:format)

  end

  def update        # PATCH /instructions/:instruction_id/steps/:id(.:format)
    @step = Step.where(instruction_id: params[:instruction_id], id: params[:id])[0]
    @step.update(step_params)
    redirect_to instruction_steps_path(@instruction, @step)
  end

  def sort()   # PATCH /instructions/:instruction_id/:data_value(.:format)
      order = params[:data_value].split(",").map { |s| s.to_i }
      steps = Step.where(instruction_id: params[:instruction_id]).sort_by { |a| order.index a.id }
      qty = steps.length
      myarray = (1..qty).to_a
      steps.each_with_index {|step, i | step.update(position: myarray[i]) }
    # # head :ok
  end


  def destroy       # DELETE /instructions/:instruction_id/steps/:position(.:format)
    @step.destroy
    redirect_to instruction_steps_path(@instruction, @step)
  end

  private

  def set_instruction
    @instruction = Instruction.find(params[:instruction_id])
  end


  def set_step
    @step = Step.where(instruction_id: params[:instruction_id], position: params[:position])[0]
  end

 def set_steps
    # @steps = Step.where(instruction_id: params[:instruction_id]).order(:position)

    # @steps = Step.where(instruction_id: params[:instruction_id]).sort_by { |a| a.position }
  end


  def step_params
    params.require(:step).permit(:position, :description, :photo, :status, :photo_cache)
  end
end


