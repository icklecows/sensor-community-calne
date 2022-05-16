require "rails_helper"

RSpec.describe Sensor, type: :model do
  let(:valid_attributes) do
    {
      label: "CalneAQM005-A3a (CTC Funded)",
      model: "Design A3a",
      node_id: 6_719_832,
      pm_sensor_id: 55_678,
      temp_rh_sensor_id: 55_679,
      community_registration_id: 29_869,
      active: true
    }
  end

  describe "Validates sensor metadata" do
    it "creates a record with valid attributes" do
      sensor = Sensor.new(valid_attributes)
      expect(sensor).to be_valid
    end
  end
end
