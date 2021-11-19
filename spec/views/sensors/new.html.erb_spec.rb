require 'rails_helper'

RSpec.describe "sensors/new", type: :view do
  before(:each) do
    assign(:sensor, Sensor.new())
  end

  it "renders new sensor form" do
    render

    assert_select "form[action=?][method=?]", sensors_path, "post" do
    end
  end
end
