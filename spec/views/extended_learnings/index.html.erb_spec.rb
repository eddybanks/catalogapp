require 'rails_helper'

RSpec.describe "extended_learnings/index", type: :view do
  before(:each) do
    assign(:extended_learnings, [
      ExtendedLearning.create!(
        :section_content => "MyText"
      ),
      ExtendedLearning.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of extended_learnings" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
