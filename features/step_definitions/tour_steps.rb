
When(/^I navigate to tour show page "([^"]*)" on "([^"]*)"$/) do |tourname, destinationname|
  destination = Destination.find_by(name: destinationname)
  tour = Tour.find_by(name: tourname)
  visit "/destinations/#{destination.id}/tours/#{tour.id}"
end

When(/^I enter new info into the tour fields$/) do
  fill_in "tour[name]", with: "I am a tour in London!"
  select "Sightseeing", :from => "tour[tour_type]"
  fill_in "tour[description]", with: "Test tour in London"
  fill_in "tour[day_of_week]", with: "Everyday"
  fill_in "tour[lat]", with: "51.502981"
  fill_in "tour[lng]", with: "-0.120507"
end


When(/^I save and open page$/) do
  save_and_open_page
end

When(/^I change details of tour$/) do
  fill_in "tour[description]", with: "Tour description change"
end
