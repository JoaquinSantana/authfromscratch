require 'rails_helper'

feature 'logout' do

  before do
    @user = User.create!(name: "Tomek", email: 'example@example.com', password: 'test1234', password_confirmation: 
      'test1234')
  end

  scenario 'successfully logout' do
    login(@user)

    expect(page).to have_content("Zostałeś zalogowany")

    click_link "Wyloguj"

    expect(page).to have_content("Zostałeś wylogowany")
    expect(page).to have_content("Zaloguj")
    expect(page).to_not have_content("Wyloguj")
  end
end