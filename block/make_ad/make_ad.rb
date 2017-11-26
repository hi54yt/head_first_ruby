lines = []
File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

# revelant_lines = []
#
# lines.each do |line|
#   if line.include?("Truncated")
#     revelant_lines << line
#   end
# end

revelant_lines = lines.find_all { |line| line.include?("Truncated") }

reviews = revelant_lines.reject { |line| line.include?("--") }

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

# adjectives = []
#
# reviews.each do |review|
#   adjectives << find_adjective(review)
# end

adjectives = reviews.map do |review|
  abjective = find_adjective(review)
  "'#{abjective.capitalize}'"
end

puts adjectives
