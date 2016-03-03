require 'rails_helper'

RSpec.describe "colleges/edit", type: :view do
  before(:each) do
    @college = assign(:college, College.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit college form" do
    render

    assert_select "form[action=?][method=?]", college_path(@college), "post" do

      assert_select "textarea#college_section_content[name=?]", "college[section_content]"
    end
  end
end
