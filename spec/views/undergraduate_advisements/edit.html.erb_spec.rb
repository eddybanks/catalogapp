require 'rails_helper'

RSpec.describe "undergraduate_advisements/edit", type: :view do
  before(:each) do
    @undergraduate_advisement = assign(:undergraduate_advisement, UndergraduateAdvisement.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit undergraduate_advisement form" do
    render

    assert_select "form[action=?][method=?]", undergraduate_advisement_path(@undergraduate_advisement), "post" do

      assert_select "textarea#undergraduate_advisement_section_content[name=?]", "undergraduate_advisement[section_content]"
    end
  end
end
