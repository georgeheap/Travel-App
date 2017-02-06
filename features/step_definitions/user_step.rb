
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

When(/^I enter a new info into the bio field$/) do
  fill_in "user[bio]", with: "I am a lion!"
end

Then(/^the current user's bio should be updated$/) do
  user = User.find_by(email: "lion@king.com")
  expect((user.bio).to_s).to eq("I am a lion!")
end

When(/^I enter new info into the trip fields$/) do
  fill_in "trip[name]", with: "I am a lion in London!"
  select "London", :from => "trip[destination_id]"
  # fill_in "trip[destination_id]", with: "London"
  fill_in "trip[from_date]", with: "03/08/2017"
  fill_in "trip[to_date]", with: "18/08/2017"
end

When(/^a customer uploads an image to profile, file exists$/) do
  page.attach_file("customer_profile_attributes_avatars_attributes_0_avatar", Rails.root + 'public/uploads/avatar/avatar/1/wolf.jpg')
end
