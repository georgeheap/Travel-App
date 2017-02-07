Feature: A user creates an account
  As an unregistered user, I should be able to register for an account


  @poltergeist
    Scenario: Inputting a username when registering
    When I navigate to registration page
    Then I should see the "username" input form
      And I should be required to fill in username when registering
    When I sign up as a new user

  @poltergeist
    Scenario: About us page
    When I navigate to home page
      And I click on "ABOUT US" link
      And I wait for 1 seconds
    Then I should see "About Us"
