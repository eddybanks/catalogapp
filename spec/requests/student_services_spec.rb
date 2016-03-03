require 'rails_helper'

RSpec.describe "StudentServices", type: :request do
  describe "GET /student_services" do
    it "works! (now write some real specs)" do
      get student_services_path
      expect(response).to have_http_status(200)
    end
  end
end
