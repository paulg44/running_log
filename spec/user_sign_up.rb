require "rails_helper"

RSpec.describe "User sign up", type: :feature do 
    it "allows a user to sign up" do 
        visit new_user_registration_path

        fill_in "user_email", with: "paul@test.com"
        fill_in "user_password", with: "test1234"
        fill_in "user_password_confirmation", with: "test1234"

        click_button "Sign up"

        expect(page).to have_text("Hello, paul@test.com")
    end
end