require "rails_helper"

RSpec.describe Lamp, type: :model do

  before{@lamp = Lamp.new}

  describe "Teste de preenchimento do model Lamp" do

    it "lamp_model consegue ser preenchido?" do
      @lamp.lamp_model = "lampada de filamento"
      expect(@lamp.lamp_model).to eq("lampada de filamento")
    end

  end

end
