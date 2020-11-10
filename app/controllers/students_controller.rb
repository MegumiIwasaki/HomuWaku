class StudentsController < ApplicationController
  before_action :authenticate_student!
  before_action :set_current_student
  def show
  end

  def edit
  end

  def update
  	if @student.update(student_params)
  	     redirect_to students_home_path
    else
         render :edit
    end
  end

  private
  def set_current_student
    @student = current_student
  end

  def student_params
    params.require(:student).permit(:name, :school, :grade, :email)
  end
end
