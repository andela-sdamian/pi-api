class AddReadingToLights < ActiveRecord::Migration[5.0]
  def change
    add_column :lights, :reading, :string
  end
end
