require "rails_helper"

RSpec.feature "Visit enter run form page", type: :feature do 
    scenario "User visits enter run form page" do 
        visit log_run_path
        expect(page).to have_css "h2", text: "Enter your run"
    end
end