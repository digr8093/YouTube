module PageHelper

  def calendar( month, year )

    prev_month = month - 1
    prev_year = year

    next_month = month + 1
    next_year = year

    if( prev_month <= 0)
      prev_month = 12
      prev_year = year -1
    end

    if( prev_month >= 12 )
      next_month = 1
      next_year = year +1

    end

    current_date  = Date.new(year, month, 1)
    day_of_week   = current_date.strftime("%w").to_i

    cal=""
    cal += "<br/>"
    #cal += link_to "Prev", "/page/calendar?month=#{prev_month }&year=#{prev_year}"

    cal += link_to("Prev", calendar_path(:month=> prev_month, :year => prev_year) )

    cal += "&nbsp"
    cal += current_date.strftime("%B")
    cal += "&nbsp"

    cal += link_to("Next", calendar_path(:month=> next_month, :year => next_year) )
    #cal += link_to "Next", "/page/calendar?month=#{next_month }&year=#{next_year}"


    cal   += "<br/><table border='1'><tr>"
    days  = %w( Sun Mon Tues Weds Thu Fri Sat)


    days.each do | day |
      cal += "<td>#{day}</td>"
    end

    cal += "<tr/>"
    cal += "<tr>"

  #draw calendar - row first week of the month
    day_of_week.times do
      cal += "<td>&nbsp;</td>"
    end

  #draw calendar - Middle columns

  #draw calendar - last row

    # look at Date class, figure out how many days in a month, get last day and minus one



    (7 - day_of_week).times do |day|
      cal += "<td>#{day +1}</td>"
    end


    cal += "</tr></table>"
    cal += "Month: #{month} <br/>"
    cal += "<br/>Year: #{year}"
    cal += "<br/>Date: #{current_date}"
    cal += "<br/>Day of Week: #{day_of_week}"

            return cal
  end


  def show_link ( link )
    return link_to "Google", "http://google.com"
  end


end
