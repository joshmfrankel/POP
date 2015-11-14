feature 'Navigation menu' do
  scenario 'should have valid GUEST links' do
    visit root_url

    expect(page).to have_link('Features', href: pages_features_path)
    expect(page).to have_link('Login', href: new_user_session_path)
    expect(page).to have_link('Register', href: new_user_registration_path)

    expect(page).to_not have_link('Profile', href: edit_user_registration_path)
  end

  scenario 'should have valid USER links' do

    # Login via warden
    user = create(:user)
    login_as(user, :scope => :user)

    visit root_url

    expect(page).to have_link('Profile', href: edit_user_registration_path)
    expect(page).to have_link('Log out', href: destroy_user_session_path)

    expect(page).to have_content 'user'
  end

  scenario 'should have valid MODERATOR links' do

  end
end
