
RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end
  it 'is invalid without email'
  it 'is invalid without role'
  it 'is invalid without password'
end
