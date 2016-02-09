require 'rails_helper'

RSpec.describe "administrations/new", type: :view do
  before(:each) do
    assign(:administration, Administration.new(
      :section_header => "MyString",
      :section_text => "MyText",
      :subsection_header => "MyString",
      :subsection_text => "MyText",
      :url_links => "MyString"
    ))
  end

  it "renders new administration form" do
    render

    assert_select "form[action=?][method=?]", administrations_path, "post" do

      assert_select "input#administration_section_header[name=?]", "administration[section_header]"

      assert_select "textarea#administration_section_text[name=?]", "administration[section_text]"

      assert_select "input#administration_subsection_header[name=?]", "administration[subsection_header]"

      assert_select "textarea#administration_subsection_text[name=?]", "administration[subsection_text]"

      assert_select "input#administration_url_links[name=?]", "administration[url_links]"
    end
  end
end
