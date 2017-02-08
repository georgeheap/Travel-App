
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

When(/^I enter a new info into the fields$/) do
  fill_in "user[bio]", with: "I am a lion!"
  # click_button('Choose file')
  # attach_file('public/images/simba.jpg')
end

# Then(/^the current user's bio should be updated$/) do
#   user = User.find_by(email: "lion@king.com")
#   expect((user.bio).to_s).to eq("I am a lion!")
# end

When(/^I enter new info into the trip fields$/) do
  fill_in "trip[name]", with: "I am a lion in London!"
  select "London", :from => "trip[destination_id]"
  fill_in "trip[from_date]", with: "03/08/2017"
  fill_in "trip[to_date]", with: "18/08/2017"
end

# Then(/^I should see image$/) do
#   save_and_open_page
#   find('img')['src'].include?(img_src).should be_true
# end

When(/^I navigate to home page$/) do
  visit "/"
end

When(/^I enter incorrect info into the trip fields$/) do
  fill_in "trip[name]", with: "I am a lion in London!"
  select "London", :from => "trip[destination_id]"
  fill_in "trip[from_date]", with: "18/08/2017"
  fill_in "trip[to_date]", with: "03/08/2017"
end


# And(/^I should see user trips$/) do
#   user = User.find_by(email: "lion@king.com")
#   trip = user.trips
#   expect(user.trips).to have_content('I am a lion in London!')
# end
