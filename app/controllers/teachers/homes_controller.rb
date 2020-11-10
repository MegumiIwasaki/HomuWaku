class Teachers::HomesController < ApplicationController
  before_action :authenticate_teacher!

  def home
  	@teacher = current_teacher
  end
end

