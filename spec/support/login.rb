module Login

  def login(user)
    visit root_path
    click_link "Zaloguj"
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button "Zaloguj"
  end
end