class Changetimetostring < ActiveRecord::Migration
  def change
    change_column :reservations, :time, :string
  end
end
