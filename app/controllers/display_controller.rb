class DisplayController < ApplicationController
    
    # Authenticate logged in user
    before_action :authenticate_user!

    def index 
        @q = current_user.tests.ransack(params[:q])

        @tests = @q.result(distinct: true)
    end

    def destroy 
        @test = Test.find(params[:id])
        @test.destroy
        redirect_to display_path
    end
end