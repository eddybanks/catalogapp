require 'rails_helper'

RSpec.describe "graduate_programs/index", type: :view do
  before(:each) do
    assign(:graduate_programs, [
      GraduateProgram.create!(
        :section_content => "MyText"
      ),
      GraduateProgram.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of graduate_programs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
