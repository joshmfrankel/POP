class UserRole < ApplicationController
  include Authorizable
end

describe UserRole do
  it 'should be valid for moderator' do
    sign_in create(:user, :user)
    expect(subject.authorize_admin).to be_falsey
    expect(subject.authorize_moderator).to be_falsey
    expect(subject.authorize_user).to be_truthy
  end

  it 'should be valid for moderator' do
    sign_in create(:user, :moderator)
    expect(subject.authorize_admin).to be_falsey
    expect(subject.authorize_moderator).to be_truthy
    expect(subject.authorize_user).to be_truthy
  end

  it 'should be valid for admin' do
    sign_in create(:user, :admin)
    expect(subject.authorize_admin).to be_truthy
    expect(subject.authorize_moderator).to be_truthy
    expect(subject.authorize_user).to be_truthy
  end

  it 'should redirect for non-admins' do
    sign_in create(:user, :user)
    #subject.authorize_admin!
  end
end
