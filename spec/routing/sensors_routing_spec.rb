require "rails_helper"

RSpec.describe SensorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sensors").to route_to("sensors#index")
    end

    it "routes to #new" do
      expect(get: "/sensors/new").to route_to("sensors#new")
    end

    it "routes to #show" do
      expect(get: "/sensors/1").to route_to("sensors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sensors/1/edit").to route_to("sensors#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/sensors").to route_to("sensors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sensors/1").to route_to("sensors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sensors/1").to route_to("sensors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sensors/1").to route_to("sensors#destroy", id: "1")
    end
  end
end
