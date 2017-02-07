# Given(/^I am signed in as "([^"]*)"$/) do |email|
#   log_on_as(email)
# end
#
# When(/^I navigate to my inbox as "([^"]*)"$/) do |email|
#   current_user = User.find_by(email: email)
#   visit "#{user_path(current_user.id)}/conversations"
# end
#
# When(/^I follow the link "([^"]*)"$/) do |link|
#   recipient_id = User.find_by(email: link.match(/<RECIPIENT\w+\@\w+.\w+>/).to_s[10...-1]).id
#   sender_id = User.find_by(email: link.match(/<SENDER\w+\@\w+.\w+>/).to_s[7...-1]).id
#   login_token = User.find_by(id: recipient_id).login_token
#   path = link.gsub(/<RECIPIENT\w+\@\w+.\w+>/, recipient_id.to_s).gsub(/<SENDER\w+\@\w+.\w+>/, sender_id.to_s).gsub(/<token>/, login_token)
#   visit path
# end
#
# When(/^I navigate to the profile of user "([^"]*)"$/) do |email|
#   viewed_user = User.find_by(email: email)
#   visit user_path(viewed_user.id)
# end
#
#
# Then(/^I should not see "([^"]*)"$/) do |text|
#   page.has_css?("xycabc")
#   expect(page.body).to_not match(text)
# end
#
# Then(/^the page should have "([^"]*)"$/) do |css|
#   expect(page).to have_css(css)
# end
#
# Then(/^there should be (\d+) messages with the sender_id of "([^"]*)" and recipient_id of "([^"]*)" and a body of "([^"]*)"$/) do |number, email1, email2, body|
#   user1_id = User.find_by(email: email1).id
#   user2_id = User.find_by(email: email2).id
#   expect(Message.where(sender_id: user1_id, recipient_id: user2_id, body: body).count).to eq(number)
# end
#
# Then(/^there should be (\d+) message belonging to "([^"]*)" and a body of "([^"]*)"$/) do |arg1, arg2, arg3|
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
#
# Then(/^there should be a conversation with the sender_id of "([^"]*)" and the receiver_id of "([^"]*)"$/) do |user1_email, user2_email|
#   (page).has_css?("xycabc")
#   user1 = User.find_by(email: user1_email)
#   user2 = User.find_by(email: user2_email)
#   conversation = Message.conversation_messages(user1, user2)
#   expect(conversation.count).to eq(2)
#   conversation = Message.conversation_messages(user2, user1)
#   expect(conversation.count).to eq(2)
# end
#
# Then(/^there should not be a conversation with the sender_id of "([^"]*)" and the receiver_id of "([^"]*)"$/) do |user1_email, user2_email|
#   (page).has_css?("xycabc")
#   user1 = User.find_by(email: user1_email)
#   user2 = User.find_by(email: user2_email)
#   conversation = Message.conversation_messages(user1, user2)
#   expect(conversation.count).to_not eq(2)
#   conversation = Message.conversation_messages(user2, user1)
#   expect(conversation.count).to_not eq(2)
# end
#
# Then(/^the conversation between "([^"]*)" and "([^"]*)" should have a latest message with a body of "([^"]*)"$/) do |user1_email, user2_email, text|
#   user1 = User.find_by(email: user1_email)
#   user2 = User.find_by(email: user2_email)
#   conversation = Message.conversation_messages(user1, user2)
#   expect(conversation.last.body).to eq(text)
# end
