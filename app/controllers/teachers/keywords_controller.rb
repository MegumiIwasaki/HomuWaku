class Teachers::KeywordsController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@teacher = current_teacher
  	@students = Student.where(school: @teacher.school)
    @check = @students.any?{|student| student.keyword.is_active == "未認証" }
  end

  def show
  	@student = Student.find(params[:id])
  end

  def update
  	@keyword = Keyword.find(params[:id])
  	@keyword.update(keyword_params)
  	redirect_to teachers_home_path
  end

  private
    def keyword_params
      params.require(:keyword).permit(:is_active)
    end
end

