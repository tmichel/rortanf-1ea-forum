class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      flash.now.alert = 'Ervenytelen email vagy jelszo.'
      render "new"
    end
  end
  
  def destroy
    @current_user = nil
    session[:user_id] = nil
    redirect_to :root, :notice => "Sikeresen kijelentkeztel."
  end
  
end
