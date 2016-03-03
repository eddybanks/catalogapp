require 'rails_helper'

RSpec.describe "UndergraduatePrograms", type: :request do
  describe "GET /undergraduate_programs" do
    it "works! (now write some real specs)" do
      get undergraduate_programs_path
      expect(response).to have_http_status(200)
    end
  end
end
