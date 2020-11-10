class Teachers::SubmissionsController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@teacher = current_teacher
  	@post_homeworks = @teacher.post_homeworks
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    if @submission.update(submission_params)
         redirect_to teachers_submissions_path
    else
         render :show
    end
  end

  def download
  	@submission = Submission.find(params[:id])
  	@name = @submission.post_homework.name + "_" + @submission.student.name
  	send_data(@submission.file,:filename=>@name)
  end

  private
  def submission_params
    params.require(:submission).permit(:evaluation, :comment)
  end
end

