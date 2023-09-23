require "rails_helper"

RSpec.feature "Visit homepage", type: :feature do 
    scenario "User visits homepage" do 
        visit root_path
    end
end