require "rails_helper"

describe "User signs up", type: :system do

  let(:email) { "ex@ex.ru" }
  let(:password) { "123456" }
  let(:invalid_password) { "123" }

  before do
    visit new_user_registration_path
  end

  scenario "with valid data" do
    fill_in "email-field", with: email
    fill_in "password-field", with: password
    fill_in "conf-pas-field", with: password

    find('#submit-btn').click

    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  scenario "invalid when email already exists" do
    fill_in "email-field", with: email
    fill_in "password-field", with: password
    fill_in "conf-pas-field", with: password
    
    find('#submit-btn').click

    expect(page).to have_no_text "Welcome back"
    expect(page).to have_content("Email has already been taken.")
  end

  scenario "invalid with password length < 6" do
    fill_in "email-field", with: email
    fill_in "password-field", with: invalid_password
    fill_in "conf-pas-field", with: invalid_password

    expect(page).to have_no_text("Welcome! You have signed up successfully.")
  end

  scenario "sign up short password" do
		visit root_path
		visit 'users/sign_up'

		fill_in "email-field", with: "example@ex.ru"
		fill_in "password-field", with: "ex"
		fill_in "conf-pas-field", with: "ex"

		find('#submit-btn').click
		expect(page).to have_text('Password is too short (minimum is 6 characters)')
	end
end