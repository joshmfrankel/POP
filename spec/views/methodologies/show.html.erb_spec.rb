require 'rails_helper'

RSpec.describe "methodologies/show", type: :view do
  before(:each) do
    @methodology = assign(:methodology, Methodology.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
