feature 'Navigation' do
  scenario 'should have valid GUEST links' do
    visit root_url
    expect(page).to have_link('Login', href: new_user_session_path)
    expect(page).to have_link('Register', href: new_user_registration_path)
    expect(page).to have_link('Features', href: pages_features_path)
  end
end
