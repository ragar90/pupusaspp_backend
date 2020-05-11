require "rails_helper"

RSpec.describe Api::MenuItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/menu_items").to route_to("api/menu_items#index")
    end

    it "routes to #new" do
      expect(get: "/api/menu_items/new").to route_to("api/menu_items#new")
    end

    it "routes to #show" do
      expect(get: "/api/menu_items/1").to route_to("api/menu_items#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/api/menu_items/1/edit").to route_to("api/menu_items#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/menu_items").to route_to("api/menu_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/menu_items/1").to route_to("api/menu_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/menu_items/1").to route_to("api/menu_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/menu_items/1").to route_to("api/menu_items#destroy", id: "1")
    end
  end
end
