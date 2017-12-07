class SurveysController < ApplicationController


    def index
    #     session[:views] || =0
    end
    
    def processform
        session[:result] = params[:survey]
        redirect_to '/result'
    end    


    def result
        session[:count] ||= 0
        session[:count] += 1
        @result = session[:result]
        flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now"

    end


    private
    
    def survey_params
        params.require(:survey).permit(:name,:location,:language,:coments)
    end    
    
    
end
