require 'rails_helper'

describe 'Valid user can sign in' do

  scenario 'User can sign up' do
    visit '/signup'
    fill_in 'user[user_name]', with: "James"
    fill_in 'user[password]', with: "password"
    click_on "Sign up"
    expect(page).to have_content("Logged in as")
    click_on "Sign Out"
    expect(page).to have_content("Sign In")
    click_on "Sign In"
    fill_in 'user_name', with: "James"
    fill_in 'password', with: "password"
    click_on "Sign in"
    expect(page).to have_content("Logged in as")

  end

end
