class KeywordsController < ApplicationController
  def new
  	@keyword = Keyword.new
  end

  def create
  	@keyword = Keyword.new(keyword_params)
  	@keyword.student_id = current_student.id
  	@keyword.save
  	redirect_to students_home_path
  end

  private
  def keyword_params
    params.require(:keyword).permit(:words)
  end

end
