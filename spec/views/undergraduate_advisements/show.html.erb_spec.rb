require 'rails_helper'

RSpec.describe "undergraduate_advisements/show", type: :view do
  before(:each) do
    @undergraduate_advisement = assign(:undergraduate_advisement, UndergraduateAdvisement.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
