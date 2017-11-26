class Grade
  include Comparable
  VALID_LETTERS =  ["A", "B", "C", "D", "F"]

  attr_reader :letter

  def letter=(value)
    # if !['A', 'B', 'C', 'D', 'F'].include? value
    unless VALID_LETTERS.include? value
        raise "The letter #{letter} is invalid"
    end
    @letter = value
  end

  def initialize(value)
    self.letter = value
  end

  def <=> (other)
    if letter > other.letter
      return -1
    elsif letter < other.letter
      return 1
    else
      return 0
    end
  end
end


a_grade = Grade.new("A")
b_grade = Grade.new("B")
c_grade = Grade.new("C")
d_grade = Grade.new("D")
# d_grade = Grade.new("E")
f_grade = Grade.new("F")

puts "a_grade > c_grade: #{a_grade > c_grade}"
puts "f_grade < d_grade: #{f_grade < d_grade}"
puts "b_grade > a_grade: #{b_grade > a_grade}"
puts "a_grade == a_grade: #{a_grade == a_grade}"
