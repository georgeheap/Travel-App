Feature: Destinations Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user


    @poltergeist
    Scenario: Navigating to the destinations index page
    When I navigate to "destinations"
    Then I should see "London"
    Then I should see "Iceland"
      And I should see "2" images

    @poltergeist
    Scenario: Navigating to destinations show page
    When I navigate to destination show page "London"
    Then I should see "Name"
      And I should see "Capital City of the UK"
