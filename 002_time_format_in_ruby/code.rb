# Note: "00:30:00 AM"  and  "00:30:00 PM"  are wrong time format
#       "12:30:00 AM"  and  "12:30:00 PM"  are correct time format  

require 'date'

(0...24).each do |hour|
	timeStr_24Hour = ("%02d" % hour) + ":00:00"
	timeStr_12Hour = DateTime.strptime(timeStr_24Hour, "%H:%M:%S").strftime("%l:%M:%S %p")
	puts "#{timeStr_24Hour} => #{timeStr_12Hour}"
end   