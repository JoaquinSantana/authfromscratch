require 'rails_helper'

feature 'user' do
  scenario 'non log in see all articles' do
    visit root_path

    expect(page).to have_content("Articles")
  end

  scenario 'can sign up' do
    visit root_path
    click_link "Zarejestruj"

    fill_in "Name", with: "Tomek"
    fill_in "Email", with: "example@example.com"
    fill_in "Password", with: "test1234"
    fill_in "Confirmation", with: "test1234"
    click_button "Utwórz konto"

    expect(page).to have_text("Zostałeś pomyślnie zalogowany")
    expect(User.count).to eq 1
  end
end

