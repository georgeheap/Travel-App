Feature: Tours Pages

  Background:
    Given sample data has been loaded
    And I am a new, authenticated user


    @poltergeist
    Scenario: Navigating to the tours index page
      When I navigate to destination show page "Hawaii"
      Then I should see "Featured Tours"
        And I should see "Learn to surf"

    @poltergeist
    Scenario: Navigating to tours show page
      When I navigate to tour show page "Learn to Surf" on "Hawaii"
      Then I should see "Everyday"
        And I should see "Learn to surf on the amazing Island of Kauai."
