Feature: A user can log in
  As a registered user, when I visit the homepage I should see a link that will take me to the login page, where I can login

  Background:
    Given sample data has been loaded

    @poltergeist
    Scenario: Clicking on the Sign in button
      When I navigate to homepage
      Then I should see "SIGN IN"
        And I click on "SIGN IN" link
        And I wait for 1 seconds
      Then I should see "Email"
        And I should see "Password"
        And I should see "Log in"

    @poltergeist
    Scenario: Submitting login details
      When I navigate to sign in
        And I log in as "lion@king.com" with password "123456"
        And I click on "Log in" button
      Then I should be redirected to the homepage
