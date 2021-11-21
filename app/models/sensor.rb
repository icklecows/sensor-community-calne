class Sensor < ApplicationRecord
  validates :label, :model, presence: true
  validates :node_id, :pm_sensor_id, :temp_rh_sensor_id, :community_registration_id, numericality: true
  validates :label, :node_id, :pm_sensor_id, :temp_rh_sensor_id, :community_registration_id, uniqueness: true
end
