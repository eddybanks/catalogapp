require 'rails_helper'

RSpec.describe "extended_learnings/new", type: :view do
  before(:each) do
    assign(:extended_learning, ExtendedLearning.new(
      :section_content => "MyText"
    ))
  end

  it "renders new extended_learning form" do
    render

    assert_select "form[action=?][method=?]", extended_learnings_path, "post" do

      assert_select "textarea#extended_learning_section_content[name=?]", "extended_learning[section_content]"
    end
  end
end
