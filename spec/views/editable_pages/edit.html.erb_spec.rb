require 'rails_helper'

RSpec.describe "editable_pages/edit", type: :view do
  before(:each) do
    @editable_page = assign(:editable_page, EditablePage.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit editable_page form" do
    render

    assert_select "form[action=?][method=?]", editable_page_path(@editable_page), "post" do

      assert_select "textarea#editable_page_section_content[name=?]", "editable_page[section_content]"
    end
  end
end
