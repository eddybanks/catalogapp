require 'rails_helper'

RSpec.describe "degrees/new", type: :view do
  before(:each) do
    assign(:degree, Degree.new(
      :section_content => "MyText"
    ))
  end

  it "renders new degree form" do
    render

    assert_select "form[action=?][method=?]", degrees_path, "post" do

      assert_select "textarea#degree_section_content[name=?]", "degree[section_content]"
    end
  end
end
