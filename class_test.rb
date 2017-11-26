def test
  puts "I'm out of class"
end

class Test
  test

  def self.call_test
    Test.new.test
  end

  def call_test
    test
  end

  def test
    puts "I'm in the class"
  end

  def twins
    lucy
    lily
  end

  def lucy
    puts "I'm Lucy"
  end

  def lily
    puts "I'm Lily"
  end
end

test = Test.new
test.twins
