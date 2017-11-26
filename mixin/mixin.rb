module MyModule
  def my_method
    puts "hello from my module"
  end
end

class MySuperClass
  include MyModule

  def my_method
    puts "hello from my super class"
  end

  def method_one
    puts "hello from my super class"
  end
end

module Friendly
  def method_one
    puts "hello from method_one"
  end
end

module Friendlier
  def method_two
    puts "hello from method_two"
  end
end

class MyClassOne < MySuperClass
  include Friendly
  include Friendlier
end

class MyClassTwo < MySuperClass
  include Friendly
  include Friendlier
end


my_object_one = MyClassOne.new
my_object_two = MyClassTwo.new
my_object_one.method_one
my_object_two.method_two
my_object_one.my_method
