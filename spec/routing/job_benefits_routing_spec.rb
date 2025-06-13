require "rails_helper"

RSpec.describe JobBenefitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/job_benefits").to route_to("job_benefits#index")
    end

    it "routes to #show" do
      expect(get: "/job_benefits/1").to route_to("job_benefits#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/job_benefits").to route_to("job_benefits#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/job_benefits/1").to route_to("job_benefits#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/job_benefits/1").to route_to("job_benefits#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/job_benefits/1").to route_to("job_benefits#destroy", id: "1")
    end
  end
end
