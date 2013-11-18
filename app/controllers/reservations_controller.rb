class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def new
    @reservation = @restaurant.reservations.build
  end

  def show
  end

  def search
    @reservations = Reservation.search_by_date(reservation_params)
    redirect_to reservations_search_results_path
  end
  
  private
  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :time, :guests)
  end
end
