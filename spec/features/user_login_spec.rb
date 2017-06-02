feature 'allow user to signup' do
  scenario 'user can signup with an email and a password' do
    visit('/signup')
    fill_in('email', with: 'mail@mail.com')
    fill_in('password', with: 'password')
    click_button('Sign Up')
    # user = User.create(email: 'mail@mail.com')
    # p user.email
    expect(page).to have_content('mail@mail.com')

  end
end
