require 'rails_helper'

RSpec.describe "sensors/show", type: :view do
  before(:each) do
    @sensor = assign(:sensor, Sensor.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
