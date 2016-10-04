require "rails_helper"

RSpec.describe JointsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/joints").to route_to("joints#index")
    end

    it "routes to #new" do
      expect(:get => "/joints/new").to route_to("joints#new")
    end

    it "routes to #show" do
      expect(:get => "/joints/1").to route_to("joints#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/joints/1/edit").to route_to("joints#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/joints").to route_to("joints#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/joints/1").to route_to("joints#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/joints/1").to route_to("joints#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/joints/1").to route_to("joints#destroy", :id => "1")
    end

  end
end
