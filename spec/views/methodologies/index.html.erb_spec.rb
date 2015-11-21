require 'rails_helper'

RSpec.describe "methodologies/index", type: :view do
  before(:each) do
    assign(:methodologies, [
      Methodology.create!(),
      Methodology.create!()
    ])
  end

  it "renders a list of methodologies" do
    render
  end
end
