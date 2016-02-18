require 'rails_helper'

RSpec.describe Journal, type: :model do
  it 'has a valid factory' do
    expect(create(:journal)).to be_valid
  end

  it 'is invalid without title' do
    expect(build(:journal, title: nil)).to_not be_valid
  end

  it 'is invalid without editor' do
    expect(build(:journal, editor: nil)).to_not be_valid
  end

  it 'is invalid without impact factor' do
    expect(build(:journal, impact_factor: nil)).to_not be_valid
  end

  it 'is invalid without integer impact factor' do
    expect(build(:journal, impact_factor: 'A#')).to_not be_valid
    expect(build(:journal, impact_factor: 5.6)).to_not be_valid
  end

  it 'is invalid without impact factor' do
    expect(build(:journal, impact_factor: nil)).to_not be_valid
  end

  describe 'association' do
    it 'has valid has_many :through for methodology' do
      journal = create(:journal)
      journal.tags.create(methodology: create(:methodology))
      expect(journal.methodologies.first.name).to eq(build(:methodology).name)
      expect(journal.methodologies.size).to eq(1)
    end
  end

end
