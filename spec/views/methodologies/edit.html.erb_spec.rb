require 'rails_helper'

RSpec.describe "methodologies/edit", type: :view do
  before(:each) do
    @methodology = assign(:methodology, Methodology.create!())
  end

  it "renders the edit methodology form" do
    render

    assert_select "form[action=?][method=?]", methodology_path(@methodology), "post" do
    end
  end
end
