class MainController < ApplicationController

    before_action :authenticate_user!, except: [:main]

    def index
    end
end