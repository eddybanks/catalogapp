require 'rails_helper'

RSpec.describe "student_services/edit", type: :view do
  before(:each) do
    @student_service = assign(:student_service, StudentService.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit student_service form" do
    render

    assert_select "form[action=?][method=?]", student_service_path(@student_service), "post" do

      assert_select "textarea#student_service_section_content[name=?]", "student_service[section_content]"
    end
  end
end
