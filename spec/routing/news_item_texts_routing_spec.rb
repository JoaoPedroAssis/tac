require "rails_helper"

RSpec.describe NewsItemTextsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/news_item_texts").to route_to("news_item_texts#index")
    end

    it "routes to #show" do
      expect(get: "/news_item_texts/1").to route_to("news_item_texts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/news_item_texts").to route_to("news_item_texts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/news_item_texts/1").to route_to("news_item_texts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/news_item_texts/1").to route_to("news_item_texts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/news_item_texts/1").to route_to("news_item_texts#destroy", id: "1")
    end
  end
end
