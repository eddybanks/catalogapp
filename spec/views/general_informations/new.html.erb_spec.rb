require 'rails_helper'

RSpec.describe "general_informations/new", type: :view do
  before(:each) do
    assign(:general_information, GeneralInformation.new(
      :section_header => "MyString",
      :section_text => "MyText",
      :subsection_header => "MyString",
      :subsection_text => "MyText",
      :url_links => "MyString"
    ))
  end

  it "renders new general_information form" do
    render

    assert_select "form[action=?][method=?]", general_informations_path, "post" do

      assert_select "input#general_information_section_header[name=?]", "general_information[section_header]"

      assert_select "textarea#general_information_section_text[name=?]", "general_information[section_text]"

      assert_select "input#general_information_subsection_header[name=?]", "general_information[subsection_header]"

      assert_select "textarea#general_information_subsection_text[name=?]", "general_information[subsection_text]"

      assert_select "input#general_information_url_links[name=?]", "general_information[url_links]"
    end
  end
end
