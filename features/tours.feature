Feature: Tours Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user


    @poltergeist
    Scenario: Navigating to the tours index page
      When I navigate to "tours"
      Then I should see "Tours"

    @wip
    @poltergeist
    Scenario: Navigating to tours show page
      When I navigate to destination show page "London"
      Then I should see "Name"
        And I should see "Capital City of the UK"
