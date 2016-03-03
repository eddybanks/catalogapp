require 'rails_helper'

RSpec.describe "student_services/index", type: :view do
  before(:each) do
    assign(:student_services, [
      StudentService.create!(
        :section_content => "MyText"
      ),
      StudentService.create!(
        :section_content => "MyText"
      )
    ])
  end

  it "renders a list of student_services" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
