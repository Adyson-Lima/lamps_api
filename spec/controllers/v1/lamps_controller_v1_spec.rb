require "rails_helper"

RSpec.describe Api::V1::LampsController, type: :controller do

  before{@lamp = Lamp.create(lamp_model: "lampada neon", description: "lampada alto brilho")}

  describe "GET /api/v1/lamps" do
    it "Consegue listar todos os lamps e retornar status 200?" do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end
