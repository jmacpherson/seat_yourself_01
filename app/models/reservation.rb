class Reservation < ActiveRecord::Base
  GUESTS = %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)
  belongs_to :user
  belongs_to :restaurant
  validates_presence_of :day, :message => "What day would you like to make your reservation?"
  validates_presence_of :time, :message => "What time would you like to make your reservation?"
  validates_presence_of :guests, :message => "How many guests is this for?"
  before_save :availability?


  def capacity
    100
  end

  def availability?
    (booked_guests_at_time + self.guests) <= capacity
  end

  def seats_left
    capacity - booked_guests_at_time
  end

  def booked_guests_at_time
    Reservation.where(restaurant_id: self.restaurant_id, day: self.day, time: self.time).sum(:guests)
  end
end
