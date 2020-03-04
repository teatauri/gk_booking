class SessionsController < ApplicationController

    def login
      if !session[:admin_id]
        @admin = Admin.new
      else
        redirect_to '/'
      end
    end
  
    def create
      admin = Admin.find_by(name: params[:admin][:name])
  
      admin = admin.try(:authenticate, params[:admin][:password])
  
      return redirect_to login_path unless admin
  
      session[:admin_id] = admin.id
      
  
      @admin = admin
      
      redirect_to booking_path
    end
  
    def destroy
      session.delete :admin_id
  
      redirect_to login_path
    end
  end