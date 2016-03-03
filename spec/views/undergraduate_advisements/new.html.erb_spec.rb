require 'rails_helper'

RSpec.describe "undergraduate_advisements/new", type: :view do
  before(:each) do
    assign(:undergraduate_advisement, UndergraduateAdvisement.new(
      :section_content => "MyText"
    ))
  end

  it "renders new undergraduate_advisement form" do
    render

    assert_select "form[action=?][method=?]", undergraduate_advisements_path, "post" do

      assert_select "textarea#undergraduate_advisement_section_content[name=?]", "undergraduate_advisement[section_content]"
    end
  end
end
