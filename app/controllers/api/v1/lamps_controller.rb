class Api::V1::LampsController < ApplicationController

  before_action :set_lamp, only: %i[] #show update destroy

  def index
    @lamps = Lamp.all
    render json: @lamps
  end

private

def set_lamp
  @lamp = Lamp.find(params[:id])
end

def lamp_params
  params.require(:lamp).permit(:lamp_model, :description)
end

end
