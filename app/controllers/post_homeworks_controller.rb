class PostHomeworksController < ApplicationController
  def index
  	@student = current_student
  	@post_homeworks = PostHomework.all
  end

  def show
  end

  def edit
  end

  def download
  	@post_homework = PostHomework.find(params[:id])
  	send_data(@post_homework.file,:filename=>@post_homework.name)
  end
end
