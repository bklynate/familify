class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:email])

    else
      flash.now[:danger] = "Invalid password or email!"
      render 'new'
    end
  end

  def destroy
  end
end
