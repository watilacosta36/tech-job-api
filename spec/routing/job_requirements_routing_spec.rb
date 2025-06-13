require "rails_helper"

RSpec.describe JobRequirementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/job_requirements").to route_to("job_requirements#index")
    end

    it "routes to #show" do
      expect(get: "/job_requirements/1").to route_to("job_requirements#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/job_requirements").to route_to("job_requirements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/job_requirements/1").to route_to("job_requirements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/job_requirements/1").to route_to("job_requirements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/job_requirements/1").to route_to("job_requirements#destroy", id: "1")
    end
  end
end
