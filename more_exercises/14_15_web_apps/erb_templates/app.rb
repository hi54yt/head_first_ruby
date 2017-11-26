require 'sinatra'

get('/fruits') do
  @items = ["apples", "oranges", "pears"]
  erb :list
end

get('/meats') do
  @items = ["chicken", "beef", "lamb"]
  erb :list
end
