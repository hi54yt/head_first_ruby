class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  # def initialize(name, options = {})
  #   # self不能省略，否则ruby会认为是变量赋值，而不是=()表达式
  #   self.name = name
  #   self.age = options[:age]
  #   self.occupation = options[:occupation]
  #   self.hobby = options[:hobby]
  #   self.birthplace = options[:birthplace]
  # end

  def initialize(name, age: nil, occupation:, hobby: nil, birthplace: nil)
    # self不能省略，否则ruby会认为是变量赋值，而不是=()表达式
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

candidate = Candidate.new('kevin', age: 10)
p candidate
