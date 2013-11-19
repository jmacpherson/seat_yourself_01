class Reservation < ActiveRecord::Base
  TIMES = %w(7:00pm 8:00pm 9:00pm)
  GUESTS = %w(1 2 3 4 5 6 7 8 9 10)
  belongs_to :user
  belongs_to :restaurant
  validates_presence_of :day, :message => "What day would you like to make your reservation?"
  validates_presence_of :time, :message => "What time would you like to make your reservation?"
  validates_presence_of :guests, :message => "How many guests is this for?"
  before_save :availability?


  def capacity
    10
  end

  def availability?
    booked_guests = booked_guests_at_time
    (booked_guests + self.guests) <= capacity
  end

  def seats_left
    booked_guests = booked_guests_at_time
    capacity - booked_guests
  end

  def booked_guests_at_time
    matching_reservations = Reservation.where(restaurant_id: self.restaurant_id, day: self.day, time: self.time)
    booked_guests = 0
    matching_reservations.each do |reservation|
      booked_guests += reservation.guests
    end
    booked_guests
  end
end
