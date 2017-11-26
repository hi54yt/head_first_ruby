WEEK = {5 => 'Friday'}
MONTH = {7 => 'June'}

t = Time.now
wday = t.wday
month = t.month
day = t.day
year = t.year
puts "Today is #{WEEK[wday]}, #{MONTH[month]} #{day}, #{year}"
