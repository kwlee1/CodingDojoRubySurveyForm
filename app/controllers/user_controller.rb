class UserController < ApplicationController
  def index
  end

  def create
    session[:user] = params[:user]
    redirect_to result_path
  end

  def result
    @user = session[:user]
  end
end
