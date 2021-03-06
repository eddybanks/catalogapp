require 'rails_helper'

RSpec.describe "years/new", type: :view do
  before(:each) do
    assign(:year, Year.new(
      :name => "MyString",
      :homepage_header => "MyString",
      :homepage_text => "MyText"
    ))
  end

  it "renders new year form" do
    render

    assert_select "form[action=?][method=?]", years_path, "post" do

      assert_select "input#year_name[name=?]", "year[name]"

      assert_select "input#year_homepage_header[name=?]", "year[homepage_header]"

      assert_select "textarea#year_homepage_text[name=?]", "year[homepage_text]"
    end
  end
end
