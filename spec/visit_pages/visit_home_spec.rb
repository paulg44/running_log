require "rails_helper"

RSpec.feature "Visit homepage", type: :feature do 
    scenario "User visits homepage" do 
        visit root_path
        expect(page).to have_css "h2", text: "Welcome to Run Tracker"
    end
end