require "rails_helper"

RSpec.describe Lamp, type: :model do

  before{@lamp = Lamp.new}

  describe "Teste de preenchimento do model Lamp" do

    it "lamp_model consegue ser preenchido?" do
      @lamp.name = ""
      expect(@lamp.name).to eq("lampada de filamento")
    end

  end

end
