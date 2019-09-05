class Timer
  attr_accessor :seconds

  def initialize()
    @seconds = 0
  end

  def time_string
    sec = seconds
    hrs = 0
    min = 0

    while sec > 60
      sec -= 60
      min += 1
    end

    while min > 60
      hrs += 1
      min -= 60
    end

    time_string = ""
    if hrs > 9
      time_string += hrs.to_s  + ":"
    else
      time_string += "0" + hrs.to_s + ":"
    end
    
    if min > 9
      time_string += min.to_s  + ":"
    else
      time_string += "0" + min.to_s  + ":"
    end
    
    if sec > 9
      time_string += sec.to_s
    else
      time_string += "0" + sec.to_s
    end

    return time_string
  end
end

timer = Timer.new
timer.seconds = 66
puts timer.time_string
