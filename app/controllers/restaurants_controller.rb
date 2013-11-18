class RestaurantsController < ApplicationController
  before_filter :load_user

  def index
  
  end
  
  def show
    
  end
  
  def new
    @restaurant = @user.restaurant.build
  end
  
  def edit
    
  end
  
  def create
    @restaurant = @user.restaurant.build restaurant_params
    if @restaurant.save
      redirect_to user_restaurant(params[:id])
    else
      render 'new'
    end
  end
  
  
  def update
    
  end
  
  def destroy
    
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :neighbourhood)
  end

  def load_user
    @user = params.find[:user_id]
  end
end
