require "rails_helper"

RSpec.describe GraduateProgramsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/graduate_programs").to route_to("graduate_programs#index")
    end

    it "routes to #new" do
      expect(:get => "/graduate_programs/new").to route_to("graduate_programs#new")
    end

    it "routes to #show" do
      expect(:get => "/graduate_programs/1").to route_to("graduate_programs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/graduate_programs/1/edit").to route_to("graduate_programs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/graduate_programs").to route_to("graduate_programs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/graduate_programs/1").to route_to("graduate_programs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/graduate_programs/1").to route_to("graduate_programs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/graduate_programs/1").to route_to("graduate_programs#destroy", :id => "1")
    end

  end
end
