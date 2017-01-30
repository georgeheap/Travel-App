Feature: Destinations Pages

  Background:
    Given sample data has been loaded


    @poltergeist
    Scenario: Navigating to the destinations index page
    When I navigate to "destinations"
    Then I should see "Iceland"
      And I should see "London"

    # @poltergeist
    # Scenario: Navigating to the destinations show page
    # When I navigate to destinations show page with "id"
    # Then I should see "Name"
    #   And I should see "Description"
