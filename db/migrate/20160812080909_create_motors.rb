class CreateMotors < ActiveRecord::Migration[5.0]
  def change
    create_table :motors do |t|
      t.boolean :running, default: false

      t.timestamps
    end
  end
end
