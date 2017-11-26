class Steak
  include Comparable

  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" =>1}

  attr_accessor :grade

  # def >(other)
  #   GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
  # end

  def <=>(other)
    if GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
      return 0
    elsif GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
      return 1
    end
  end
end

first_steak = Steak.new
first_steak.grade = "Prime"

second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
  puts "I'll take #{first_steak.inspect}"
end

steaks = Hash.new do |hash, key|
  steak = Steak.new
  hash[key] = steak
end

steaks["prime"].grade = "Prime"
prime = steaks["prime"]
steaks["choice"].grade = "Choice"
choice = steaks["choice"]
steaks["select"].grade = "Select"
select = steaks["select"]
p steaks

puts "prime > choice: #{prime > choice}"
puts "Prime < choice: #{prime < choice}"
puts "select == select: #{select == select}"
puts "select <= select: #{select >= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, prime):"
puts choice.between?(select, prime)
