json.extract! sensor,
              :id,
              :label,
              :model,
              :node_id,
              :pm_sensor_id,
              :temp_rh_sensor_id,
              :community_registration_id,
              :active,
              :created_at,
              :updated_at
json.url sensor_url(sensor, format: :json)
