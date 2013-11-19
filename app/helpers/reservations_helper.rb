module ReservationsHelper
  def open_time
    11
  end

  def close_time
    20
  end

  def interval
    30.minutes
  end

  def reservation_slots
    reservations = Array.new
    time = DateTime.now.at_beginning_of_day + open_time.hours
    while time.hour.hours <= close_time.hours
      reservations << legible_time(time)
      time += interval
    end
    return reservations
  end

  def legible_time(date_time)
    matchd = /\d{2}:\d{2}:/.match(date_time.to_s)
    matchd = matchd.to_s.split('')
    matchd.pop
    if matchd[0] == 0
      matchd.shift
      return matchd.join('') + " am"
    elsif matchd[0..1].join('').to_i < 12
      return matchd.join('') + " am"
    elsif matchd[0..1].join('').to_i == 12
      return matchd.join('') + " pm"
    else
      return (matchd[0..1].join('').to_i - 12).to_s + matchd[2..-1].join('') + " pm"
    end
  end
end