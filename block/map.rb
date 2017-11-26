class Array
  def map
    results = []
    self.each do |item|
      results << yield(item)
    end
    results
  end
end

numbers = [2, 3, 4]

# squares = []
#
# numbers.each do |number|
#   squares << number ** 2
# end

squares = numbers.map { |number| number ** 2 }

p squares

# cubes = []
#
# numbers.each do |number|
#   cubes << number ** 3
# end

cubes = numbers.map { |number| number ** 3 }

p cubes
