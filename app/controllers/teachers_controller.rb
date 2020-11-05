class TeachersController < ApplicationController
  before_action :set_current_teacher
  def show
  end

  def edit
  end

  def update
  	@teacher.update(teacher_params)
  	redirect_to teacher_my_page_path
  end

  private
  def set_current_teacher
    @teacher = current_teacher
  end

  def teacher_params
    params.require(:teacher).permit(:name, :school, :email)
  end
end
