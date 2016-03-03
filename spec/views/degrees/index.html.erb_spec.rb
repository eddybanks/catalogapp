require 'rails_helper'

RSpec.describe "degrees/index", type: :view do
  before(:each) do
    assign(:degrees, [
      Degree.create!(
        :section_content => "MyText"
      ),
      Degree.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of degrees" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
