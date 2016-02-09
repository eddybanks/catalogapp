require 'rails_helper'

RSpec.describe "admissions/edit", type: :view do
  before(:each) do
    @admission = assign(:admission, Admission.create!(
      :section_header => "MyString",
      :section_text => "MyText",
      :subsection_header => "MyString",
      :subsection_text => "MyText",
      :url_links => "MyString"
    ))
  end

  it "renders the edit admission form" do
    render

    assert_select "form[action=?][method=?]", admission_path(@admission), "post" do

      assert_select "input#admission_section_header[name=?]", "admission[section_header]"

      assert_select "textarea#admission_section_text[name=?]", "admission[section_text]"

      assert_select "input#admission_subsection_header[name=?]", "admission[subsection_header]"

      assert_select "textarea#admission_subsection_text[name=?]", "admission[subsection_text]"

      assert_select "input#admission_url_links[name=?]", "admission[url_links]"
    end
  end
end
