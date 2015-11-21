require 'rails_helper'

RSpec.describe "methodologies/new", type: :view do
  before(:each) do
    assign(:methodology, Methodology.new())
  end

  it "renders new methodology form" do
    render

    assert_select "form[action=?][method=?]", methodologies_path, "post" do
    end
  end
end
