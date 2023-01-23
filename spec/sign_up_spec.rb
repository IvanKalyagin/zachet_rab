require "rails_helper"

describe "User signs up", type: :system do
  let(:email_v) { Faker::Internet.email }
  let(:password_v) { Faker::Internet.password(min_length: 6) }

  before do
    visit new_user_registration_path
  end

  scenario "with valid data" do
    visit new_user_registration_path
    fill_in :email, with: email_v
    fill_in :password, with: password_v
    find('#submit-btn').click

    expect(page).to have_text "Signed up succesfully"
  end

end