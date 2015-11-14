feature 'User visits' do
  scenario '' do

  end

  def login_by_role(role)
    user = create(:user, role)
    login_as(user, scope: :user)
  end
end
