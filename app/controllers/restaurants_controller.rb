class RestaurantsController < ApplicationController
  before_filter :load_user

  def index
    @restaurants= Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def new
    @restaurant = @user.restaurants.build
  end
  
  def edit
    
  end
  
  def create
    @restaurant = @user.restaurants.build restaurant_params
    @restaurant.user_id = current_user.id
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
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
    @user = current_user
  end

end
