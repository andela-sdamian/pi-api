class CreatePumps < ActiveRecord::Migration[5.0]
  def change
    create_table :pumps do |t|
      t.boolean :on, default: false 

      t.timestamps
    end
  end
end
