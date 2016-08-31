require 'rails_helper'

RSpec.describe "abouts/show", type: :view do
  before(:each) do
    @about = assign(:about, About.create!(
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
  end
end
