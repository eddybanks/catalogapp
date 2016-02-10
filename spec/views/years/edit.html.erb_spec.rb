require 'rails_helper'

RSpec.describe "years/edit", type: :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :name => "MyString",
      :homepage_header => "MyString",
      :homepage_text => "MyText"
    ))
  end

  it "renders the edit year form" do
    render

    assert_select "form[action=?][method=?]", year_path(@year), "post" do

      assert_select "input#year_name[name=?]", "year[name]"

      assert_select "input#year_homepage_header[name=?]", "year[homepage_header]"

      assert_select "textarea#year_homepage_text[name=?]", "year[homepage_text]"
    end
  end
end
