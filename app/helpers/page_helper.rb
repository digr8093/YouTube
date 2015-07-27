module PageHelper

  def calendar( month, year )

    current_date  = Date.new(year, month, 1)
    day_of_week   = current_date.strftime("%w").to_i

    cal   = "<table border='1'><tr>"
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
