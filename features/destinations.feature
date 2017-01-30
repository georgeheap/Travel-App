Feature: Destinations Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user


    @poltergeist
    Scenario: Navigating to the destinations index page
    When I navigate to "destinations"
    Then I should see "London"
      # And I should see the image "London.jpg"
    Then I should see "Iceland"
      # And I should see the image "Iceland.jpg"


    # @poltergeist
    # Scenario: Navigating to the destinations show page
    # When I navigate to destinations show page with "id"
    # Then I should see "Name"
    #   And I should see "Description"
