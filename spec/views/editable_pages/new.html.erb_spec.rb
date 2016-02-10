require 'rails_helper'

RSpec.describe "editable_pages/new", type: :view do
  before(:each) do
    assign(:editable_page, EditablePage.new(
      :section_content => "MyText"
    ))
  end

  it "renders new editable_page form" do
    render

    assert_select "form[action=?][method=?]", editable_pages_path, "post" do

      assert_select "textarea#editable_page_section_content[name=?]", "editable_page[section_content]"
    end
  end
end
