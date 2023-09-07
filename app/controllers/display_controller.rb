class DisplayController < ApplicationController
    def index 
        @tests = Test.all 
        @q = Test.ransack(params[:q])
        @tests = @q.result(distinct: true)
    end

    def destroy 
        @test = Test.find(params[:id])
        @test.destroy
        redirect_to display_path
    end
end