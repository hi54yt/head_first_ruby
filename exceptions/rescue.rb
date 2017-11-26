begin
  puts "I'll be run."
  raise "opps!"
  puts "I'll be skipped."
rescue
  puts "Rescue an exception!"
end

def first_method
  risky_method
  puts "I'll be skipped."
end

def risky_method
  raise "oops!"
  puts "I'll be skipped."
end

begin
  first_method
rescue
  puts "Rescue an exception!"
end
