class SubmissionsController < ApplicationController
  before_action :authenticate_student!
  before_action :set_homework, only: [:new, :create]

  def index
  	@student = current_student
  	@submissions = @student.submissions
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def new
  end

  def create
  	@submission.post_homework_id = @post_homework.id
  	@submission.student_id = current_student.id

  	file={}
  	file[:file] = uploadfile_params[:file].read
  	@submission.file = file[:file]

  	if @submission.save
  	     redirect_to students_home_path
    else
         render :new
    end
  end

  def download
    @submission = Submission.find(params[:id])
    send_data(@submission.file,:filename=>@submission.post_homework.name)
  end

  private
  def set_homework
    @submission = Submission.new
    @post_homework = PostHomework.find(params[:id])
  end

  def uploadfile_params
    params.require(:submission).permit(:file)
  end

end
