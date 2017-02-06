
When(/^I navigate to tour show page "([^"]*)" on "([^"]*)"$/) do |tourname, destinationname|
  destination = Destination.find_by(name: destinationname)
  tour = Tour.find_by(name: tourname)
  visit "/destinations/#{destination.id}/tours/#{tour.id}"
end
