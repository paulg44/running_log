class DisplayController < ApplicationController
    def index 
        @tests = Test.all 
    end
end