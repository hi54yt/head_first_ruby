# a = 1
# def test
#   puts a
# end
#
# test

# def block1(&my_block)
#   my_block.call
#   puts 1
# end

def block2
  yield
  yield
  yield
  puts 2
end

# block1
block2 {puts 1}
block2 {puts 1}
block2 {puts 1}

def volume(options)
  result = options[:depth] * options[:height] * options[:width]
  puts "Volume is #{result}"
end

volume(width: 10, height: 5, depth: 2.5)
