require "rails_helper"

RSpec.describe UndergraduateAdvisementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/undergraduate_advisements").to route_to("undergraduate_advisements#index")
    end

    it "routes to #new" do
      expect(:get => "/undergraduate_advisements/new").to route_to("undergraduate_advisements#new")
    end

    it "routes to #show" do
      expect(:get => "/undergraduate_advisements/1").to route_to("undergraduate_advisements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/undergraduate_advisements/1/edit").to route_to("undergraduate_advisements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/undergraduate_advisements").to route_to("undergraduate_advisements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/undergraduate_advisements/1").to route_to("undergraduate_advisements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/undergraduate_advisements/1").to route_to("undergraduate_advisements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/undergraduate_advisements/1").to route_to("undergraduate_advisements#destroy", :id => "1")
    end

  end
end
