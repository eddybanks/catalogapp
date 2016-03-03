require 'rails_helper'

RSpec.describe "undergraduate_programs/edit", type: :view do
  before(:each) do
    @undergraduate_program = assign(:undergraduate_program, UndergraduateProgram.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit undergraduate_program form" do
    render

    assert_select "form[action=?][method=?]", undergraduate_program_path(@undergraduate_program), "post" do

      assert_select "textarea#undergraduate_program_section_content[name=?]", "undergraduate_program[section_content]"
    end
  end
end
