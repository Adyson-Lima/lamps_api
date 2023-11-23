require "rails_helper"

RSpec.describe Lamp, type: :model do

  before{@lamp = Lamp.new}

  describe "Teste de preenchimento do model Lamp" do

    it "lamp_model consegue ser preenchido?" do
      @lamp.lamp_model = "lampada de filamento"
      expect(@lamp.lamp_model).to eq("lampada de filamento")
    end

    it "description consegue ser preenchido?" do
      @lamp.description = "lampada antiga"
      expect(@lamp.description).to eq("lampada antiga")
    end

  end

  describe "teste de validação do model Lamp" do

    it "Lamp valido com campos obrigatorios preenchidos?" do
      @lamp.lamp_model = "lampada led"
      @lamp.description = "lampada de 12W"
      expect(@lamp).to be_valid
    end

  end

end
