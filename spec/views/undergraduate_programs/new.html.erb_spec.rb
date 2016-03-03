require 'rails_helper'

RSpec.describe "undergraduate_programs/new", type: :view do
  before(:each) do
    assign(:undergraduate_program, UndergraduateProgram.new(
      :section_content => "MyText"
    ))
  end

  it "renders new undergraduate_program form" do
    render

    assert_select "form[action=?][method=?]", undergraduate_programs_path, "post" do

      assert_select "textarea#undergraduate_program_section_content[name=?]", "undergraduate_program[section_content]"
    end
  end
end
