require 'rails_helper'

RSpec.describe "colleges/new", type: :view do
  before(:each) do
    assign(:college, College.new(
      :section_content => "MyText"
    ))
  end

  it "renders new college form" do
    render

    assert_select "form[action=?][method=?]", colleges_path, "post" do

      assert_select "textarea#college_section_content[name=?]", "college[section_content]"
    end
  end
end
