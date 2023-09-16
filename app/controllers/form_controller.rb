class FormController < ApplicationController
    def new 
        @test = Test.new
    end
    
    # Create new entry to database
    def create 
        @test = current_user.tests.build(test_params)
        # Parsed duration
        @test.duration = Time.parse(params[:test][:duration]).strftime("%H:%M:%S")
        if @test.save
            flash[:success] = "Run was logged successfully"
        #    Redirect to chosen path once entry submitted
           redirect_to display_path
        else
            render :new
        end
    
    
end

   
    private 

    # Define the test parameters 
    def test_params
        params.require(:test).permit(:date, :distance, :duration, :pace, :surface, :description)
    end
end