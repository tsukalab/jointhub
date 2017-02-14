require "rails_helper"

RSpec.describe JointTagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/joint_tags").to route_to("joint_tags#index")
    end

    it "routes to #new" do
      expect(:get => "/joint_tags/new").to route_to("joint_tags#new")
    end

    it "routes to #show" do
      expect(:get => "/joint_tags/1").to route_to("joint_tags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/joint_tags/1/edit").to route_to("joint_tags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/joint_tags").to route_to("joint_tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/joint_tags/1").to route_to("joint_tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/joint_tags/1").to route_to("joint_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/joint_tags/1").to route_to("joint_tags#destroy", :id => "1")
    end

  end
end
