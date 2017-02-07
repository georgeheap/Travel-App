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

When(/^I click on "([^"]*)" link$/) do |text|
  has_content?(text)
  click_link text
end

When(/^I click on "([^"]*)" button$/) do |text|
  click_button(text)
end

Then(/^I should see "([^"]*)" images$/) do |count|
  all("img").length.should == count.to_i
end

Given /^I wait for (\d+) seconds?$/ do |n|
  sleep(n.to_i)
end


When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |css_selector, text|
  fill_in css_selector, with: text
end
