class CreateSensors < ActiveRecord::Migration[6.1]
  def change
    create_table :sensors do |t|
      t.string :label
      t.string :model
      t.string :node_id
      t.string :pm_sensor_id, index: true
      t.string :temp_rh_sensor_id, index: true
      t.string :community_registration_id
      t.boolean :active

      t.timestamps
    end
  end
end
