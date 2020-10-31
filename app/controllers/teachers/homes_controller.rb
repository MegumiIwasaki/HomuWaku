class Teachers::HomesController < ApplicationController
  def home
  	@teacher = current_teacher
  end
end
