require 'rails_helper'

RSpec.describe "extended_learnings/edit", type: :view do
  before(:each) do
    @extended_learning = assign(:extended_learning, ExtendedLearning.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit extended_learning form" do
    render

    assert_select "form[action=?][method=?]", extended_learning_path(@extended_learning), "post" do

      assert_select "textarea#extended_learning_section_content[name=?]", "extended_learning[section_content]"
    end
  end
end
