def send_sos
  # begin
    raise "Latitude -50.75, Longitude 166.04"
  # rescue => messages
  #   puts "Sending rescue party to #{messages}"
  # end
end

begin
  send_sos
rescue => exception
  puts "Sending rescue party to #{exception.message}"
end
