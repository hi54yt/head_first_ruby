def trip_over_curb
  # begin
    raise "WHOA!"
  # rescue
  #   puts "Caught you!"
  # end

end

begin
  trip_over_curb
rescue
  puts "Caught you!"
end
