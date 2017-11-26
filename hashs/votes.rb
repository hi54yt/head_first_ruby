lines = []
File.open('votes.txt') do |file|
  lines = file.readlines
end

# votes = {}
# lines.each do |line|
#   name = line.chomp
#   if votes.has_key? name
#     votes[name] += 1
#   else
#     votes[name] = 1
#   end
# end

votes = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase!
  votes[name] += 1
end

votes.each do |name, count|
  puts "#{name}: #{count}"
end
