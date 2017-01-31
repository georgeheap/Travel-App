Then(/^I should see all destinations$/) do
  count = Destination.count
  assert rows.should == count unless !(rows.respond_to? :should)
end

When(/^I navigate to destination show page "([^"]*)"$/) do |name|
  destination = Destination.find_by(name: name)
  visit "/destinations/#{destination.id}"
end
