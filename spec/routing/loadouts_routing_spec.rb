require "rails_helper"

RSpec.describe LoadoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/loadouts").to route_to("loadouts#index")
    end


    it "routes to #show" do
      expect(:get => "/loadouts/1").to route_to("loadouts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/loadouts").to route_to("loadouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/loadouts/1").to route_to("loadouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/loadouts/1").to route_to("loadouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loadouts/1").to route_to("loadouts#destroy", :id => "1")
    end

  end
end
