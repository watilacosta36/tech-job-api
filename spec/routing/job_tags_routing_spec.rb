require "rails_helper"

RSpec.describe JobTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/job_tags").to route_to("job_tags#index")
    end

    it "routes to #show" do
      expect(get: "/job_tags/1").to route_to("job_tags#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/job_tags").to route_to("job_tags#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/job_tags/1").to route_to("job_tags#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/job_tags/1").to route_to("job_tags#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/job_tags/1").to route_to("job_tags#destroy", id: "1")
    end
  end
end
