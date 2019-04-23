class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil
      redirect_to new_session_path
    elsif params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
  end
end
