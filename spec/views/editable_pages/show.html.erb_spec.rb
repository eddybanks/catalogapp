require 'rails_helper'

RSpec.describe "editable_pages/show", type: :view do
  before(:each) do
    @editable_page = assign(:editable_page, EditablePage.create!(
      :section_content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
