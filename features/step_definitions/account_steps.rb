
# REGISTER

Then(/^I should see the "([^"]*)" input form$/) do |label|
  expect(page.body).to match(label)
end

Then(/^I should be required to fill in "([^"]*)" with a "([^"]*)" when registering$/) do |css_selector, attribute|
  fill_in css_selector, with: ""
  click_on "SUBMIT"
  expect(page.body).to match("#{attribute} can't be blank")
end


# UPDATE
#

When(/^I enter a new info into the bio field$/) do
  fill_in "user[bio]", with: "I am a lion!"
end


Then(/^the current user's bio should be updated$/) do
  user = User.find_by(email: "lion@king.com")
  expect((user.bio).to_s).to eq("I am a lion!")
end
