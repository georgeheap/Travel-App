Given(/^sample data has been loaded$/) do
  require './db/seeds'
  extend SeedData
end

And(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  log_on_as(user)
end

When(/^I navigate to "([^"]*)"$/) do |path|
  visit(get_named_route(path))
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page.body).to match(text)
end

When(/^I click on "([^"]*)"$/) do |text|
  click_on text
end

# Then(/^I should see the image "([^"]*)"$/) do |image|
#   expect(page).to have_xpath("//img[contains(@src, \"#{image}\")]")
#   page.should have_xpath("//img[contains(@src, \"#{image}\")]")
# end
