class CreateLamps < ActiveRecord::Migration[7.0]
  def change
    create_table :lamps do |t|
      t.string :lamp_model
      t.string :description

      t.timestamps
    end
  end
end
