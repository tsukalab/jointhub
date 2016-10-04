require 'rails_helper'

RSpec.describe "Joints", type: :request do
  describe "GET /joints" do
    it "works! (now write some real specs)" do
      get joints_path
      expect(response).to have_http_status(200)
    end
  end
end
