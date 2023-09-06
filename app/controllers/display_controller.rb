class DisplayController < ApplicationController
    def index 
        @tests = Test.all 
        @q = Test.ransack(params[:q])
        @tests = @q.result(distinct: true)
    end
end