class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
    
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def edit
    
  end
  
  def create
    @user = User.new user_params
    if @user.save
       redirect_to @user, notice: "User successfully created"
    else
      render 'new'
    end
  end
  
  
  def update
    
  end
  
  def destroy
    
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)    
  end
end
