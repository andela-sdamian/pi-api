class CreateStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :statistics do |t|
      t.float :temperature
      t.float :humidity
      t.float :lux
      t.integer :box_id

      t.timestamps
    end

    add_index :statistics, :box_id
  end
end
