class Api::V1::LampsController < ApplicationController

  before_action :set_lamp, only: %i[show update] #show update destroy

  def index
    @lamps = Lamp.all
    render json: @lamps
  end

  def show
    render json: @lamp
  end

  def create
    @lamp = Lamp.new(lamp_params)
    if @lamp.save
      render json: @lamp, status: :created, location: api_v1_lamp_url(@lamp)
    else
      render json: @lamp.errors, status: :unprocessable_entity
    end
  end

  def update
    if @lamp.update(lamp_params)
      render json: @lamp
    else
      render json: @lamp.errors, status: :unprocessable_entity
    end
  end

private

def set_lamp
  @lamp = Lamp.find(params[:id])
end

def lamp_params
  params.require(:lamp).permit(:lamp_model, :description)
end

end
