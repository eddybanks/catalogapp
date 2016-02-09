require 'rails_helper'

RSpec.describe "administrations/index", type: :view do
  before(:each) do
    assign(:administrations, [
      Administration.create!(
        :section_header => "Section Header",
        :section_text => "MyText",
        :subsection_header => "Subsection Header",
        :subsection_text => "MyText",
        :url_links => "Url Links"
      ),
      Administration.create!(
        :section_header => "Section Header",
        :section_text => "MyText",
        :subsection_header => "Subsection Header",
        :subsection_text => "MyText",
        :url_links => "Url Links"
      )
    ])
  end

  it "renders a list of administrations" do
    render
    assert_select "tr>td", :text => "Section Header".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subsection Header".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url Links".to_s, :count => 2
  end
end
