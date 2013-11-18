class AddDayToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :day, :datetime
  end
end
