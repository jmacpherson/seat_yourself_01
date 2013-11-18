class Reservation < ActiveRecord::Base
  TIMES = %w(7:00pm 8:00pm 9:00pm)
  GUESTS = %w(1 2 3 4 5 6 7 8 9 10)
  belongs_to :user
  belongs_to :restaurant

end
