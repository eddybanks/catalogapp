require 'rails_helper'

RSpec.describe "policies/edit", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      :section_header => "MyString",
      :section_text => "MyText",
      :subsection_header => "MyString",
      :subsection_text => "MyText",
      :url_links => "MyString"
    ))
  end

  it "renders the edit policy form" do
    render

    assert_select "form[action=?][method=?]", policy_path(@policy), "post" do

      assert_select "input#policy_section_header[name=?]", "policy[section_header]"

      assert_select "textarea#policy_section_text[name=?]", "policy[section_text]"

      assert_select "input#policy_subsection_header[name=?]", "policy[subsection_header]"

      assert_select "textarea#policy_subsection_text[name=?]", "policy[subsection_text]"

      assert_select "input#policy_url_links[name=?]", "policy[url_links]"
    end
  end
end
