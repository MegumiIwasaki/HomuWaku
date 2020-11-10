class HomesController < ApplicationController
  before_action :authenticate_student!
  def home
  	@student = current_student
  end
end
