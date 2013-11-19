module UsersHelper
  def your_customers(user)
    yr_restos = user.restaurants
    rez = Array.new
    yr_restos.each { |resto| rez << resto.reservations.all }
    yr_customers = Array.new
    rez
  end
end
