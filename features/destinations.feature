Feature: Destinations Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user

    # @wip
    @poltergeist
    Scenario: Navigating to the destinations index page
      When I navigate to "destinations"
      Then I should see "London"
      Then I should see "Iceland"
        And I should see "7" images

    # @wip
    @poltergeist
    Scenario: Navigating to destinations show page
      When I navigate to destination show page "London"
        And I should see "Capital City of the UK"
