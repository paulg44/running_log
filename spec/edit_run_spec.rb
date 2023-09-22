# Rails helper is a specific file used for configuring RSpec, so it can interact with the application amongst other things
require "rails_helper"

RSpec.feature "Edit a run", type: :feature do 
    scenario "User clicks edit button, is taken to edit page" do 
        visit display_path 
        save_and_open_page

        find_link("Edit", wait: 10).click

        expect(page).to have_content("Edit Entry")
    end
end