require 'rails_helper'

RSpec.describe "policies/show", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      :section_header => "Section Header",
      :section_text => "MyText",
      :subsection_header => "Subsection Header",
      :subsection_text => "MyText",
      :url_links => "Url Links"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Section Header/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Subsection Header/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url Links/)
  end
end
