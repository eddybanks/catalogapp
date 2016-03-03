require 'rails_helper'

RSpec.describe "undergraduate_programs/index", type: :view do
  before(:each) do
    assign(:undergraduate_programs, [
      UndergraduateProgram.create!(
        :section_content => "MyText"
      ),
      UndergraduateProgram.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of undergraduate_programs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
