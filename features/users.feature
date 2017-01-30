Feature: User can edit their profile

  Background:
    Given sample data has been loaded

    @poltergeist
    Scenario: 	As a logged in user, when I navigate to /id/edit, I should be able to see the edit page
      And I am logged in as "lion@king.com"
    When I navigate to users edit page as "lion@king.com"
    Then I should see Edit My Profile
