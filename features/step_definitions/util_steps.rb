Given(/^sample data has been loaded$/) do
  require './db/seeds'
  extend SeedData
end
