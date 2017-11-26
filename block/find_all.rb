# class Array
#   def find_all
#     matching_items = []
#     index = 0
#     while index < self.length
#       if yield(self[index])
#         matching_items << self[index]
#       end
#       index += 1
#     end
#     matching_items
#   end
# end

class Array
  def find_all
    matching_items = []
    self.each do |item|
      if yield(item)
        matching_items << item
      end
    end
    matching_items
  end
end

p [1, 2, 3].find_all {|a| true}
p [1, 2, 3].find_all {|a| a < 3 }
p [1, 2, 3].find_all {|a| false}
