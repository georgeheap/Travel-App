Given(/^sample data has been loaded$/) do
  require './db/seeds'
  extend SeedData
end

When(/^I navigate to "([^"]*)"$/) do |path|
  visit(get_named_route(path))
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page.body).to match(text)
end
