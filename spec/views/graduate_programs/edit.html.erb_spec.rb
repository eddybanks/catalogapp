require 'rails_helper'

RSpec.describe "graduate_programs/edit", type: :view do
  before(:each) do
    @graduate_program = assign(:graduate_program, GraduateProgram.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit graduate_program form" do
    render

    assert_select "form[action=?][method=?]", graduate_program_path(@graduate_program), "post" do

      assert_select "textarea#graduate_program_section_content[name=?]", "graduate_program[section_content]"
    end
  end
end
