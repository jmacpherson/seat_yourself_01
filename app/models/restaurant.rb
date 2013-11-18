class Restaurant < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  # to define.  Interval, open time, close time. Total people per interval.
end
