require 'sinatra'

def roll_die(sides)
  rand(sides) + 1
end

# YOUR CODE HERE
get('/roll/:sides') do
  sides = params[:sides].to_i
  "Rolling #{sides} sided die: #{roll_die(sides)}"
end
