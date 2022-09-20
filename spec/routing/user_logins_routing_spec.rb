require "rails_helper"

RSpec.describe UserLoginsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_logins").to route_to("user_logins#index")
    end

    it "routes to #show" do
      expect(get: "/user_logins/1").to route_to("user_logins#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_logins").to route_to("user_logins#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_logins/1").to route_to("user_logins#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_logins/1").to route_to("user_logins#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_logins/1").to route_to("user_logins#destroy", id: "1")
    end
  end
end
