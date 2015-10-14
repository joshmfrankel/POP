feature 'Clicking Navigation links' do
  scenario 'Sign in' do
    visit root_url
    click_link('Sign in')
    expect(current_path).to eq(new_user_session_path)
  end
end
