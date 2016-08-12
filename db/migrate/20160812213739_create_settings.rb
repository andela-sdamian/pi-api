class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.text :lux
      t.text :temp
      t.text :humidity
      t.integer :crop_id 

      t.timestamps
    end

    add_index :settings, :crop_id 
  end
end
