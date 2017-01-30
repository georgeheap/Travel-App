And(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  log_on_as(user)
end

When(/^I navigate to users edit page as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  visit "/users/#{user.id}/edit"
end

Then(/^I should see Edit My Profile$/) do
  expect(page).to have_content('Edit My Profile')
end
