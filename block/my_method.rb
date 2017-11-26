def my_method(&block)
  puts "We're in the methond, about to invoke your block!"
  block.call
  puts "We're back in the method!"
end


my_method do
  puts "We're in the block!"
end

my_method do
  puts "waaaaa!"
end

my_method do
  puts "wooooo!"
end
