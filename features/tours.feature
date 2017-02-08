Feature: Tours Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user

    # @wip
    @poltergeist
    Scenario: Navigating to the tours index page
      When I navigate to destination show page "Hawaii"
      Then I should see "Tours"
        And I should see "Learn to surf"

    # @wip
    @poltergeist
    Scenario: Navigating to tours show page
      When I navigate to tour show page "Learn to Surf" on "Hawaii"
      Then I should see "Everyday"
        And I should see "Learn to surf on the amazing Island of Kauai."

    # @wip
    @poltergeist
    Scenario: A Provider User can create a tour
      When I navigate to destination show page "London"
        And I click on "Create New Tour" link
      Then I should see "Create New Tour"
      When I enter new info into the tour fields
        And I click on "Create Tour" button
        And I wait for 1 seconds
      Then I should see "I am a tour in London!"

      @poltergeist
      Scenario: A Provider User can edit a tour
        When I navigate to tour show page "Learn to Surf" on "Hawaii"
          And I click on "Edit" link
          And I wait for 2 seconds
        Then I should see "Edit Tour"
        When I change details of tour
          And I click on "Update Tour" button
          And I wait for 1 seconds
        Then I should see "Tour description change"
