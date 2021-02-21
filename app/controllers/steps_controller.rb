require 'rubygems'
require 'twilio-ruby'

class StepsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_step, only: [:show, :edit, :destroy]
  before_action :set_steps, only: [:index, :show]
  before_action :set_instruction, only: [:index, :show, :edit, :update, :destroy, :new, :create]


  def send_sms
  @location = request.location.city

  # Get your Account SID and Auth Token from twilio.com/console
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']
  # set up a client to talk to the Twilio REST API
  begin
  @client = Twilio::REST::Client.new account_sid, auth_token

   message = @client.messages.create(
  body: "Chocolate check-in from: '#{@location}'",
  to: '+447484723518',
  from: '+13852557020')
  rescue Twilio::REST::TwilioError => e
    puts e.message
  end
end

  def index         # GET /instructions/:instruction_id/steps
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
    redirect_to instruction_steps_path(@instruction)
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
    @steps = Step.where(instruction_id: params[:instruction_id]).sort_by { |a| a.position }
  end


  def step_params
    params.require(:step).permit(:position, :description, :photo, :status, :photo_cache)
  end
end


