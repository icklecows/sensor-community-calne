require 'rails_helper'

RSpec.describe "sensors/edit", type: :view do
  before(:each) do
    @sensor = assign(:sensor, Sensor.create!())
  end

  it "renders the edit sensor form" do
    render

    assert_select "form[action=?][method=?]", sensor_path(@sensor), "post" do
    end
  end
end
