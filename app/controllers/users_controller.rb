class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      flash[:success] = "Account successfully created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    @user = params.require(:user).permit(:name,:email,:password,
                                          :password_confirmation)
  end
end
