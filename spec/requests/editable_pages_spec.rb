require 'rails_helper'

RSpec.describe "EditablePages", type: :request do
  describe "GET /editable_pages" do
    it "works! (now write some real specs)" do
      get editable_pages_path
      expect(response).to have_http_status(200)
    end
  end
end
