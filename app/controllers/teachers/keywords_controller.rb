class Teachers::KeywordsController < ApplicationController
  def index
  	@teacher = current_teacher
  	@students = Student.where(school: @teacher.school)
  end

  def show
  	@Student = Student.find(params[:id])
  end
end
