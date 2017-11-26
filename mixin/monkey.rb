module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end

module Curious
  def invetigate(thing)
    puts "Looks at #{thing}"
  end
end

class Monkey
  include Clumsy
  include Curious
end

bubbles = Monkey.new
bubbles.invetigate("vase")
bubbles.break("vase")
