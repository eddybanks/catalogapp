require 'rails_helper'

RSpec.describe "graduate_programs/show", type: :view do
  before(:each) do
    @graduate_program = assign(:graduate_program, GraduateProgram.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
