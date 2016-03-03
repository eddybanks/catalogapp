require 'rails_helper'

RSpec.describe "degrees/edit", type: :view do
  before(:each) do
    @degree = assign(:degree, Degree.create!(
      :section_content => "MyText"
    ))
  end

  it "renders the edit degree form" do
    render

    assert_select "form[action=?][method=?]", degree_path(@degree), "post" do

      assert_select "textarea#degree_section_content[name=?]", "degree[section_content]"
    end
  end
end
