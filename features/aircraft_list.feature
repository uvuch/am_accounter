Feature: Aircraft List

    The page represents all aircraft the airline owns at the current moment. It lists all
    aircraft in a grid, telling the user such an information like aircraft number,
    fuel consumption, runway length, distance and speed.

    Scenario: I visit aircraft list page
    Given I open aircraft list page
    Then I see "My Aircraft" header

    Scenario: I have no aircraft
    Given I open aircraft list page
    Then I can see "There are no aircraft in your fleet at the present time" message
    And I do not see aircraft table

    Scenario: I have some aircraft
    Given an aircraft
    When I open aircraft list page
    Then I can see aircraft table
    And I do not see "There are no aircraft in your fleet at the present time" message

    # Scenario: I have one aircraft
    # Given an aircraft
    # When I open aircraft list page
    # Then I can see aircraft data in the table

    # Scenario: I have two aircraft
    # Then I can see both aircraft data in the table