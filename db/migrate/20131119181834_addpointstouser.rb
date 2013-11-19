class Addpointstouser < ActiveRecord::Migration
  def change
    add_column :users, :loyalty_points, :integer
  end
end
