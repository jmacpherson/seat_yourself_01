class UsersController < ApplicationController

  def index
  
  end
  
  def show
    
  end
  
  def new
    @user = User.new
  end
  
  def edit
    
  end
  
  def create
    
  end
  
  
  def update
    
  end
  
  def destroy
    
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
    
  end
end
