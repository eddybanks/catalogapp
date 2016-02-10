require 'rails_helper'

RSpec.describe "editable_pages/index", type: :view do
  before(:each) do
    assign(:editable_pages, [
      EditablePage.create!(
        :section_content => "MyText"
      ),
      EditablePage.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of editable_pages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
