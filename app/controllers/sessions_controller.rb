class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil if logged_in?
    redirect_to welcome_path
  end

  def login
  end

  def welcome
  end

  def page_requries_login
  end

  private

  def login_params
    params.require(:session).permit(:email, :password)
  end
end
