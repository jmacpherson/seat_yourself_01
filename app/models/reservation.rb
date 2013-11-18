class Reservation < ActiveRecord::Base
  TIMES = %w(7:00pm 8:00pm 9:00pm)
  belongs_to :user
  belongs_to :restaurant

  def self.search_by_date(date, time, guests)
    @reservations = Reservation.find_by_date(date)
  end
end
