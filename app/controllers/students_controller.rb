class StudentsController < ApplicationController
  before_action :set_current_student
  def show
  end

  def edit
  end

  def update
  	@student.update(student_params)
  	redirect_to students_home_path
  end

  private
  def set_current_student
    @student = current_student
  end

  def student_params
    params.require(:student).permit(:name, :school, :grade, :email)
  end
end
