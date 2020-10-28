class HomesController < ApplicationController
  def home
  	@student = current_student
  end
end
