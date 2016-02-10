require "rails_helper"

RSpec.describe EditablePagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/editable_pages").to route_to("editable_pages#index")
    end

    it "routes to #new" do
      expect(:get => "/editable_pages/new").to route_to("editable_pages#new")
    end

    it "routes to #show" do
      expect(:get => "/editable_pages/1").to route_to("editable_pages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/editable_pages/1/edit").to route_to("editable_pages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/editable_pages").to route_to("editable_pages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/editable_pages/1").to route_to("editable_pages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/editable_pages/1").to route_to("editable_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/editable_pages/1").to route_to("editable_pages#destroy", :id => "1")
    end

  end
end
