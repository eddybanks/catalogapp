require 'rails_helper'

RSpec.describe "Administrations", type: :request do
  describe "GET /administrations" do
    it "works! (now write some real specs)" do
      get administrations_path
      expect(response).to have_http_status(200)
    end
  end
end
