require "rails_helper"

RSpec.describe AdministrationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/administrations").to route_to("administrations#index")
    end

    it "routes to #new" do
      expect(:get => "/administrations/new").to route_to("administrations#new")
    end

    it "routes to #show" do
      expect(:get => "/administrations/1").to route_to("administrations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/administrations/1/edit").to route_to("administrations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/administrations").to route_to("administrations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/administrations/1").to route_to("administrations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/administrations/1").to route_to("administrations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/administrations/1").to route_to("administrations#destroy", :id => "1")
    end

  end
end
