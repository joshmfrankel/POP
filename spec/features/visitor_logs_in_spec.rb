feature 'Navigation menu' do
  scenario 'should have valid GUEST links' do
    visit root_url

    expect(page).to have_link('Features', href: pages_features_path)
    expect(page).to have_link('Login', href: new_user_session_path)
    expect(page).to have_link('Register', href: new_user_registration_path)

    expect(page).to_not have_link('Profile', href: edit_user_registration_path)
  end

  scenario 'should have valid USER links' do

    login_by_role :user

    visit root_url

    expect(page).to have_link('Profile', href: edit_user_registration_path)
    expect(page).to have_link('Log out', href: destroy_user_session_path)

    expect(page).to have_link 'Add Journal', href: new_journal_path
  end

  scenario 'should have valid MODERATOR links' do

    login_by_role :moderator

    visit root_url

    expect(page).to have_link('Profile', href: edit_user_registration_path)
    expect(page).to have_link('Log out', href: destroy_user_session_path)

    expect(page).to_not have_link 'Add Journal', href: new_journal_path
    expect(page).to have_link 'Manage Journals', href: journals_path
    expect(page).to have_link 'Manage Methodologies', href: methodologies_path
  end

  scenario 'should have valid ADMIN links' do
    login_by_role :admin

    visit root_url

    expect(page).to have_link('Profile', href: edit_user_registration_path)
    expect(page).to have_link('Log out', href: destroy_user_session_path)

    expect(page).to have_link 'Manage Journals', href: journals_path
    expect(page).to have_link 'Manage Users', href: users_path
        expect(page).to have_link 'Manage Methodologies', href: methodologies_path
  end

  def login_by_role(role)
    user = create(:user, role)
    login_as(user, scope: :user)
  end

end
