And /^I am a new, authenticated user$/ do
  email = 'lion@king.com'
  password = '123456'

  visit 'users/sign_in'
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  click_button "Log in"
end

When(/^I navigate to users edit page as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  visit "/users/#{user.id}/edit"
end

Then(/^I should see Edit My Profile$/) do
  expect(page).to have_content('Edit My Profile')
end

When(/^I navigate to users show page as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  visit "/users/#{user.id}"
end
