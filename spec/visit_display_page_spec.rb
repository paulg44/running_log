require "rails_helper"

RSpec.feature "Visit Display Page", type: :feature do 
    scenario "User visits display page" do 
        visit display_path
    end
end

