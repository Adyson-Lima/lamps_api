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

  describe "GET /api/v1/lamps/id" do
    it "Consegue listar um lamp especifico e retornar status 200?" do
      get :show,params: {id: @lamp.id}
      expect(response.body).to include_json(id: @lamp.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /api/v1/lamps" do
    it "Consegue criar um lamp e retornar status 201?" do
      post :create, params: {lamp: {lamp_model: "led", description: "lampada verde"}, format: :json}
      expect(response.body).to include_json(lamp_model: "led")
      expect(response).to have_http_status(201)
    end
  end

  describe "PATCH /api/v1/lamps/id" do
    it "Consegue atualizar uma lamp e retornar status 200?" do
      lamp = Lamp.last
      patch :update, params: {lamp: {lamp_model: "mercurio", description: "lampada comum"}, id: lamp.id}
      expect(response.body).to include_json(lamp_model: "mercurio")
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /api/v1/lamps/id" do
    it "Consegue excluir um lamp e retornar status 204?" do
      lamp = Lamp.last
      delete :destroy, params: {id: lamp.id}
      expect(Lamp.all).not_to include(lamp)
      expect(response).to have_http_status(204)
    end
  end

end
