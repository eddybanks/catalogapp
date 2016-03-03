require "rails_helper"

RSpec.describe StudentServicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_services").to route_to("student_services#index")
    end

    it "routes to #new" do
      expect(:get => "/student_services/new").to route_to("student_services#new")
    end

    it "routes to #show" do
      expect(:get => "/student_services/1").to route_to("student_services#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_services/1/edit").to route_to("student_services#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_services").to route_to("student_services#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/student_services/1").to route_to("student_services#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/student_services/1").to route_to("student_services#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_services/1").to route_to("student_services#destroy", :id => "1")
    end

  end
end
