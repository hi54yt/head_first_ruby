def paragraph(string)
  "<p>#{string}</p>"
end

def image(src, width=100, height=100)
  "<img src='#{src}' width='#{width}' height='#{height}' />"
end

puts paragraph('hi there!')

puts image('logo.png', 25, 25)
