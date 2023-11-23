class Lamp < ApplicationRecord
  validates :lamp_model, :description, presence: true
end
