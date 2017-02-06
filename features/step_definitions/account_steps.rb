
And /^I am a new, authenticated user$/ do
  email = 'lion@king.com'
  password = '123456'

  visit 'users/sign_in'
  fill_in 'Email', :with => email
  fill_in 'Password', :with => password
  click_button "Log in"
end

And /^I sign up as a new user$/ do
  email = 'Thor@asgard.com'
  username = 'Thor'
  password = '123456'

  visit 'users/sign_up'
  fill_in 'Email', :with => email
  fill_in 'Username', :with => username
  fill_in 'Password', :with => password
  click_button "Sign up"
end


Then(/^I should see the "([^"]*)" input form$/) do |label|
  expect(page.body).to match(label)
end


Then(/^I should be required to fill in username when registering$/) do
  fill_in('Username', :with => "")
  click_button("Sign up")
  expect(page.body).to match("Sign up")
end

When(/^I navigate to registration page$/) do
  visit 'users/sign_up'
end
