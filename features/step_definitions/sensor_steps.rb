When("I create the following sensor:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  attributes = table.rows_hash

  visit new_sensor_path

  attributes.each do |key, value|
    fill_in key, with: value
  end
  choose "sensor_active_true"

  click_on "Create Sensor"
end

Then("I should have the following sensors:") do |table|
  %w[node_id pm_sensor_id temp_rh_sensor_id community_registration_id].each do |column_name|
    table.map_column!(column_name, &:to_i)
  end
  table.map_column!("active") { |val| val == "true" }
  table.diff!(Sensor.all.map { |sensor| sensor.attributes.except("created_at", "updated_at", "id") })
end
