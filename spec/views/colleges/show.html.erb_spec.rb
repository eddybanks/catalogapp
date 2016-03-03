require 'rails_helper'

RSpec.describe "colleges/show", type: :view do
  before(:each) do
    @college = assign(:college, College.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
