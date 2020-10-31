class Teachers::StudentsController < ApplicationController
  def index
  	@teacher = current_teacher
  	@students = Student.where(school: @teacher.school)
  end

  def show
  end
end
