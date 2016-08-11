class CreateLights < ActiveRecord::Migration[5.0]
  def change
    create_table :lights do |t|
      t.boolean :on

      t.timestamps
    end
  end
end
