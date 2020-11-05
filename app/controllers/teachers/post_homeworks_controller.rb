class Teachers::PostHomeworksController < ApplicationController
  def index
  	@teacher = current_teacher
  	@post_homeworks = @teacher.post_homeworks
  	@post_homework_new = PostHomework.new
  end

  def create
  	@post_homework_new = PostHomework.new(post_homework_params)
  	@post_homework_new.teacher_id = current_teacher.id

  	file={}
  	file[:file] = uploadfile_params[:file].read
  	@post_homework_new.file = file[:file]

  	@post_homework_new.save
  	redirect_to teachers_home_path
  end

  def new
  end

  def show
  end

  def download
  	@post_homework = PostHomework.find(params[:id])
  	send_data(@post_homework.file,:filename=>@post_homework.name)
  end

  private
  def post_homework_params
    params.require(:post_homework).permit(:name, :subject)
  end

  def uploadfile_params
    params.require(:post_homework).permit(:file)
  end

end
