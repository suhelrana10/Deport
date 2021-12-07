class SessionnsController < ApplicationController
  skip_before_action :authorize


  def index

  end


  def create

    user = User.find_by(name:params[:name])



    if user.try(:authenticate, params[:password])

      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, notice: " invalid user name or password"
    end

  end

  def destroy

    session[:user_id] = nil
    redirect_to store_index_url, notice: "you are logged out"
  end

  def new
  end


end
