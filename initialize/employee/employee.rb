class Employee
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  def name=(name)
    if name == ""
      raise "Name cant't be blank!"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end
