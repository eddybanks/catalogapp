require 'rails_helper'

RSpec.describe "GraduatePrograms", type: :request do
  describe "GET /graduate_programs" do
    it "works! (now write some real specs)" do
      get graduate_programs_path
      expect(response).to have_http_status(200)
    end
  end
end
