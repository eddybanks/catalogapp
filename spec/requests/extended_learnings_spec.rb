require 'rails_helper'

RSpec.describe "ExtendedLearnings", type: :request do
  describe "GET /extended_learnings" do
    it "works! (now write some real specs)" do
      get extended_learnings_path
      expect(response).to have_http_status(200)
    end
  end
end
