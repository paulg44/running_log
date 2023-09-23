class MainController < ApplicationController

    # A user cannot go anywhere but the main homepage before signed in
    before_action :authenticate_user!, except: [:main]

    def index
    end
end