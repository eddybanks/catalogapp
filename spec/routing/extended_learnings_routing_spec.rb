require "rails_helper"

RSpec.describe ExtendedLearningsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/extended_learnings").to route_to("extended_learnings#index")
    end

    it "routes to #new" do
      expect(:get => "/extended_learnings/new").to route_to("extended_learnings#new")
    end

    it "routes to #show" do
      expect(:get => "/extended_learnings/1").to route_to("extended_learnings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/extended_learnings/1/edit").to route_to("extended_learnings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/extended_learnings").to route_to("extended_learnings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/extended_learnings/1").to route_to("extended_learnings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/extended_learnings/1").to route_to("extended_learnings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/extended_learnings/1").to route_to("extended_learnings#destroy", :id => "1")
    end

  end
end
