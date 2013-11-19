module UsersHelper
  def your_customers(user)
    yr_restos = user.restaurants
    yr_customers = Array.new
    yr_restos.each do |resto|
      resto.reservations.each do |reserv_set|
        yr_customers << User.find(reserv_set.user_id)
      end
    end
    yr_customers.uniq
  end
end
