require "rails_helper"

RSpec.describe UndergraduateProgramsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/undergraduate_programs").to route_to("undergraduate_programs#index")
    end

    it "routes to #new" do
      expect(:get => "/undergraduate_programs/new").to route_to("undergraduate_programs#new")
    end

    it "routes to #show" do
      expect(:get => "/undergraduate_programs/1").to route_to("undergraduate_programs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/undergraduate_programs/1/edit").to route_to("undergraduate_programs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/undergraduate_programs").to route_to("undergraduate_programs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/undergraduate_programs/1").to route_to("undergraduate_programs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/undergraduate_programs/1").to route_to("undergraduate_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/undergraduate_programs/1").to route_to("undergraduate_programs#destroy", :id => "1")
    end

  end
end
