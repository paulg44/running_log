class DisplayController < ApplicationController
    
    # Authenticate logged in user
    before_action :authenticate_user!

    def index 
        # brings up current users logs, in created order so newest log is at the top
        @q = current_user.tests.order(created_at: :desc).ransack(params[:q])

        @tests = @q.result(distinct: true)
    end

    def destroy 
        # controller to delete specific log pertaining to ID
        @test = Test.find(params[:id])
        @test.destroy
        redirect_to display_path
    end
end