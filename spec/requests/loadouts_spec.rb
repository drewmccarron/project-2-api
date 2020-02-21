require 'rails_helper'

RSpec.describe "Loadouts", type: :request do
  describe "GET /loadouts" do
    it "works! (now write some real specs)" do
      get loadouts_path
      expect(response).to have_http_status(200)
    end
  end
end
