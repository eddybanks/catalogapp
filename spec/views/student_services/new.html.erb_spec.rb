require 'rails_helper'

RSpec.describe "student_services/new", type: :view do
  before(:each) do
    assign(:student_service, StudentService.new(
      :section_content => "MyText"
    ))
  end

  it "renders new student_service form" do
    render

    assert_select "form[action=?][method=?]", student_services_path, "post" do

      assert_select "textarea#student_service_section_content[name=?]", "student_service[section_content]"
    end
  end
end
