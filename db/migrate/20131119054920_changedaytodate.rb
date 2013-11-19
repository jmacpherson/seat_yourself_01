class Changedaytodate < ActiveRecord::Migration
  def change
    change_column :reservations, :day, :date
  end
end
