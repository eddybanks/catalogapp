require 'rails_helper'

RSpec.describe "years/show", type: :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :name => "Name",
      :homepage_header => "Homepage Header",
      :homepage_text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Homepage Header/)
    expect(rendered).to match(/MyText/)
  end
end
