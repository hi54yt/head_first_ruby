class Array
  def each
    index = 0
    while index < self.length
      yield self[index]
      index += 1
    end
  end
end

[1, 2, 3].each do |item|
  puts item
end
