class WelcomeController < ApplicationController
  def index
    flash[:notice] = "晚上好玉米！"
  end
end
