class KeywordsController < ApplicationController
  before_action :authenticate_student!
  
  def new
  	@keyword = Keyword.new
  end

  def create
  	@keyword = Keyword.new(keyword_params)
  	@keyword.student_id = current_student.id
  	if @keyword.save
  	    redirect_to students_home_path
    else
        render :new
    end
  end


  private
  def keyword_params
    params.require(:keyword).permit(:words)
  end

end
