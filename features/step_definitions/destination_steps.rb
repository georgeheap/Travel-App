#
# When(/^I navigate to destinations show page with "([^"]*)"$/) do |id|
#   visit '/destinations/id'
# end
Then(/^I should see all destinations$/) do
  count = Destination.count
  assert rows.should == count unless !(rows.respond_to? :should)
end
