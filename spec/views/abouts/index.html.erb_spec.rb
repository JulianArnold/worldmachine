require 'rails_helper'

RSpec.describe "abouts/index", type: :view do
  before(:each) do
    assign(:abouts, [
      About.create!(
        :text => "Text"
      ),
      About.create!(
        :text => "Text"
      )
    ])
  end

  it "renders a list of abouts" do
    render
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
