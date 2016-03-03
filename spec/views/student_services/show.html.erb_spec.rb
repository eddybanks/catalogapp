require 'rails_helper'

RSpec.describe "student_services/show", type: :view do
  before(:each) do
    @student_service = assign(:student_service, StudentService.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
