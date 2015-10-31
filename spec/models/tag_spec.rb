require 'rails_helper'

RSpec.describe Tag, type: :model do
  it 'has a valid factory' do
    expect(create(:tag)).to be_valid
  end

  it 'has a valid name' do
    expect(create(:tag, name: 'Josh')).to be_valid
  end

  it 'is invalid without name' do
    expect(build(:tag, name: nil)).to_not be_valid
  end
end
