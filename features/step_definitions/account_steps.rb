
# REGISTER

Then(/^I should see the "([^"]*)" input form$/) do |label|
  expect(page.body).to match(label)
end

Then(/^I should be required to fill in "([^"]*)" with a "([^"]*)" when registering$/) do |css_selector, attribute|
  fill_in css_selector, with: ""
  click_on "SUBMIT"
  expect(page.body).to match("#{attribute} can't be blank")
end
