# Feature: Conversation
#   As a logged in premium user, I should be able to initiate a conversation with another user.
#
#   Background:
#     Given sample data has been loaded
#       And I am logged in as "lion@king.com"
#       And I navigate to the profile of user "loki@asgard.com"
#       And I click on "Send message" link
#     When I fill in "modal-message-text-area" with "Let's get down to business!"
#       And I click on "send-message-button" button
#
#   @poltergeist
#   Scenario: Initiating a conversation with another user
#     Then there should be a conversation with the sender_id of "lion@king.com" and the receiver_id of "loki@asgard.com"
#       And the conversation between "lion@king.com" and "loki@asgard.com" should have a latest message with a body of "Let's get down to business!"
#
#   @poltergeist
#   Scenario: Deleting a message
#     When I navigate to the profile of user "loki@asgard.com"
#       And I click on "Send message" link
#     Then I should see "send-message-button"
#     When I fill in "modal-message-text-area" with "Let's get down to business!"
#       And I click on "send-message-button" button
#
#
#   # PASSING BUT SELENIUM TAKES AN AGE
#
#   @selenium
#   Scenario: Viewing message inbox
#     When I navigate to my inbox as "lion@king.com"
#     Then I should see "Your messages"
#       And I should see "Conversation with Loki"
#
#   # PASSING BUT SELENIUM TAKES AN AGE
#
#   @selenium
#   Scenario: Clicking on a conversation
#     When I navigate to my inbox as "lion@king.com"
#       And I click on "Conversation with Loki" link
#     Then I should see "Let's get down to business!"
#       And I should see "message right"
#
#
#   # PASSING BUT SELENIUM TAKES AN AGE
#
#   @selenium
#   Scenario: Replying to a message
#     And I am logged in as "loki@asgard.com"
#     When I navigate to my inbox as "loki@asgard.com"
#       And I click on "Conversation with Simba" link
#     When I fill in "message-text-area" with "It won't cost much. Just your voice!"
#       And I click on "send-message-button" button
#     Then the conversation between "lion@king.com" and "loki@asgard.com" should have a latest message with a body of "It won't cost much. Just your voice!"
#       And I should see "It won't cost much. Just your voice!"
#
#   @poltergeist
#   Scenario: Following a link to latest message
#     When I click on "SIGN OUT" link
#       And I follow the link "/users/<RECIPIENTloki@asgard.com>/messages?contact_id=<SENDERlion@king.com>&login_token=<token>"
#     Then I should see "Let's get down to business!"
#       And I should not see "message right"
#
#   @poltergeist
#   Scenario: Deleting a conversation
#     When I navigate to my inbox as "lion@king.com"
#       And I click on "DELETE" link
#     Then there should not be a conversation with the sender_id of "lion@king.com" and the receiver_id of "loki@asgard.com"
#       And I should not see "Conversation with Loki"
#
#   @poltergeist
#   Scenario: Attempting auto-login with an invalid token
#     And I click on "SIGN OUT" link
#     And I follow the link "/users/<RECIPIENTloki@asgard.com>/messages?contact_id=<SENDERlion@king.com>&login_token=1234"
#   Then I should not see "Let's get down to business!"
#     And I should see "JOIN TODAY!"
