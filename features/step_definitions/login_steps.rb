
When(/^I log in as "([^"]*)" with password "([^"]*)"$/) do |email, password|
  user = User.find_by(email: email)
  fill_in "Email", with: email
  fill_in "Password", with: password
end

When(/^I navigate to homepage$/) do
  visit "/"
end

Then(/^I should be redirected to the homepage$/) do
  expect(page.body).to match("Welcome")
end


When(/^I navigate to sign in$/) do
  visit "/users/sign_in"
end
