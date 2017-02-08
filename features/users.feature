Feature: Users Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user

    # @wip
    @poltergeist
    Scenario: 	As a logged in user, I am able to edit my account
      When I navigate to users edit page as "lion@king.com"
      Then I should see Edit My Profile
      Then I should see the "Bio" input form
      When I enter a new info into the fields
        And I click on "Update User" button
      Then the current user's bio should be updated
        # And I should see image

    # @wip
    @poltergeist
    Scenario: Navigating to the index page
      When I navigate to "users"
      Then I should see "Users"
        And I should see "Simba"

    # @wip
    @poltergeist
    Scenario: A User can create a trip and see all trip
      When I navigate to users show page as "lion@king.com"
        And I click on "Add Trip" link
      Then I should see "New Trip"
      When I enter new info into the trip fields
        And I click on "Create Trip" button
      Then I should see "I am a lion in London!"
      When I navigate to users show page as "lion@king.com"
        And I click on "See all Trips" link
        And I wait for 1 seconds
      Then I should see "My Trips"
      Then I should see "I am a lion in London!"
        # And I should see user trips

      @poltergeist
      Scenario: A User has to put an end date after start date
        When I navigate to users show page as "lion@king.com"
          And I click on "Add Trip" link
        When I enter incorrect info into the trip fields
          Then I should see "Invalid"
