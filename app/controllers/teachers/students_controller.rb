class Teachers::StudentsController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@teacher = current_teacher
  	@students = Student.where(school: @teacher.school)
  end

end
