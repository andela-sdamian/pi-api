class CreateHeats < ActiveRecord::Migration[5.0]
  def change
    create_table :heats do |t|
      t.boolean :on, default: false 

      t.timestamps
    end
  end
end
