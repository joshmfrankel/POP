require 'rails_helper'

RSpec.describe Methodology, type: :model do
  it 'has a valid factory' do
    expect(create(:methodology)).to be_valid
  end

  it 'is invalid without name' do
    expect(build(:methodology, name: nil)).to_not be_valid
  end
end
