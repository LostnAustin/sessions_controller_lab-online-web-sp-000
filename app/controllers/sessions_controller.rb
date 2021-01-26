class SessionsController < ApplicationController
  def new
  end

  def create
    # session[:name] = params[:name]
    #   if !params[:name]
    #     redirect_to '/sessions/new'
    #
    # elsif params[:name] = nil || params[:name].empty?
    #    redirect_to '/'
    # else
    #   redirect_to '/'
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'

    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
