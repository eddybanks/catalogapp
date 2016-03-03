require 'rails_helper'

RSpec.describe "colleges/index", type: :view do
  before(:each) do
    assign(:colleges, [
      College.create!(
        :section_content => "MyText"
      ),
      College.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of colleges" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
