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
