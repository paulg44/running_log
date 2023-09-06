class FormController < ApplicationController
    def new 
        @test = Test.new
    end
    
    def create 
        @test = Test.new(test_params)
        if @test.save
            flash[:success] = "Run was logged successfully"
           redirect_to display_path
        else
            render :new
        end
    end

    private 

    def test_params
        params.require(:test).permit(:date, :distance, :duration, :pace, :surface, :description)
    end
end