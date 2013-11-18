class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def new
    @reservation = @restaurant.reservations.build
  end

  def create
    @reservation = @restaurant.reservations.build (reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to restaurant_reservation_path(@restaurant.id, @reservation.id)
    else
      render :new
    end
  end

  def show
    @reservation = @restaurant.reservations.find(params[:id])
  end
  
  private
  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservation_params
    params.require(:reservation).permit(:day, :time, :guests)
  end

end
