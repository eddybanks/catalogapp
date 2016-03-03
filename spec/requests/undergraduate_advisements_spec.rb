require 'rails_helper'

RSpec.describe "UndergraduateAdvisements", type: :request do
  describe "GET /undergraduate_advisements" do
    it "works! (now write some real specs)" do
      get undergraduate_advisements_path
      expect(response).to have_http_status(200)
    end
  end
end
