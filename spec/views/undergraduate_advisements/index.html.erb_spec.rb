require 'rails_helper'

RSpec.describe "undergraduate_advisements/index", type: :view do
  before(:each) do
    assign(:undergraduate_advisements, [
      UndergraduateAdvisement.create!(
        :section_content => "MyText"
      ),
      UndergraduateAdvisement.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of undergraduate_advisements" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
