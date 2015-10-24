
RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(create(:user, :user)).to be_valid
  end

  it 'is invalid without role' do
    expect(build(:user, role: nil)).to_not be_valid
  end

  it 'is valid with existing role' do
    expect(build(:user, :user)).to be_valid
    expect(build(:user, :moderator)).to be_valid
    expect(build(:user, :admin)).to be_valid
  end

  it 'is invalid without email' do
    expect(build(:user, email: nil)).to_not be_valid
  end
end
