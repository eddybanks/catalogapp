require 'rails_helper'

RSpec.describe "extended_learnings/show", type: :view do
  before(:each) do
    @extended_learning = assign(:extended_learning, ExtendedLearning.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
