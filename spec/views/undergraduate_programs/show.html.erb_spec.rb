require 'rails_helper'

RSpec.describe "undergraduate_programs/show", type: :view do
  before(:each) do
    @undergraduate_program = assign(:undergraduate_program, UndergraduateProgram.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
