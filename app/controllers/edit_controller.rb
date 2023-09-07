class EditController < ApplicationController
    def index 
        @test = Test.find(params[:id])
    end
     # Edit an entry using ID
     def update 
        @test = Test.find(params[:id])
        if @test.update(test_params)
            redirect_to display_path
        else 
            render :edit
        end
    end
    private 

    # Define the test parameters 
    def test_params
        params.require(:test).permit(:date, :distance, :duration, :pace, :surface, :description)
    end
end