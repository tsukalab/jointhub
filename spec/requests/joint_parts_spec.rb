require 'rails_helper'

RSpec.describe "JointParts", type: :request do
  describe "GET /joint_parts" do
    it "works! (now write some real specs)" do
      get joint_parts_path
      expect(response).to have_http_status(200)
    end
  end
end
