require 'rails_helper'

feature 'user' do
  before do
    @user = User.create!(name: "Tomek", email: 'example@example.com', password: 'test1234', password_confirmation: 
        'test1234')
  end

  scenario 'success log_in' do
    login(@user)
    expect(page).to have_content("Zostałeś zalogowany")
    expect(page).to_not have_link("Zaloguj")
    expect(page).to_not have_link("Zarejestruj")
    expect(page).to have_link("Wyloguj")
  end

  scenario 'wrong log in' do
    visit root_path
    click_link "Zaloguj"
    click_button "Zaloguj"

    expect(page).to have_content("Pole login nie może być puste")
  end
end