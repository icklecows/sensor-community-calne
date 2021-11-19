require 'rails_helper'

RSpec.describe "sensors/index", type: :view do
  before(:each) do
    assign(:sensors, [
      Sensor.create!(),
      Sensor.create!()
    ])
  end

  it "renders a list of sensors" do
    render
  end
end
