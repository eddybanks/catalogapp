require 'rails_helper'

RSpec.describe "degrees/show", type: :view do
  before(:each) do
    @degree = assign(:degree, Degree.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
