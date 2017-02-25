# frozen_string_literal: true

require "rails_helper"

feature "Sign up" do
  scenario "user can sign up" do
    visit root_path
    click_link "Sign up"
    expect(current_path).to eq(new_user_path)

    email = "testemail2@email.com"
    password = "test_password2"

    fill_in "Email", with: email
    fill_in "Password", with: password
    click_button "Sign up"

    expect(page).to have_content(email)
    expect(current_path).to eq(root_path)
  end
end

feature "Signing in" do
  given(:email) { "testemail2@email.com" }
  given(:password) { "test_password2" }

  background do
    Monban.config.sign_up_service.new(email: email, password: password).perform
  end

  scenario "user can sign in" do
    visit root_path
    click_link "Sign in"
    expect(current_path).to eq(new_session_path)

    fill_in "Email", with: email
    fill_in "Password", with: password
    click_button "Sign in"

    expect(page).to have_content(email)
    expect(current_path).to eq(root_path)
  end

  scenario "user should receive error when wrong password" do
    visit root_path
    click_link "Sign in"
    expect(current_path).to eq(new_session_path)

    fill_in "Email", with: email
    fill_in "Password", with: "wrong_password"
    click_button "Sign in"

    expect(page).to have_content("incorrect")
  end
end
