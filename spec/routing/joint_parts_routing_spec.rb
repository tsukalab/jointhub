require "rails_helper"

RSpec.describe JointPartsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/joint_parts").to route_to("joint_parts#index")
    end

    it "routes to #new" do
      expect(:get => "/joint_parts/new").to route_to("joint_parts#new")
    end

    it "routes to #show" do
      expect(:get => "/joint_parts/1").to route_to("joint_parts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/joint_parts/1/edit").to route_to("joint_parts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/joint_parts").to route_to("joint_parts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/joint_parts/1").to route_to("joint_parts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/joint_parts/1").to route_to("joint_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/joint_parts/1").to route_to("joint_parts#destroy", :id => "1")
    end

  end
end
