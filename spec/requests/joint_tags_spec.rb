require 'rails_helper'

RSpec.describe "JointTags", type: :request do
  describe "GET /joint_tags" do
    it "works! (now write some real specs)" do
      get joint_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
