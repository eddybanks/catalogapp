require 'rails_helper'

RSpec.describe "graduate_programs/new", type: :view do
  before(:each) do
    assign(:graduate_program, GraduateProgram.new(
      :section_content => "MyText"
    ))
  end

  it "renders new graduate_program form" do
    render

    assert_select "form[action=?][method=?]", graduate_programs_path, "post" do

      assert_select "textarea#graduate_program_section_content[name=?]", "graduate_program[section_content]"
    end
  end
end
