# Add a sensor model to store information about community sensors
class CreateSensors < ActiveRecord::Migration[6.1]
  def change
    create_table :sensors do |t|
      t.string  :label
      t.string  :model
      t.integer :node_id
      t.integer :pm_sensor_id, index: true
      t.integer :temp_rh_sensor_id, index: true
      t.integer :community_registration_id
      t.boolean :active

      t.timestamps
    end
  end
end
