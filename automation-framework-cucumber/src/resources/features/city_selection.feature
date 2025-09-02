Feature: City Selection Validation on BookMyShow

  Scenario: Select a valid city
    Given User is on the BookMyShow homepage
    When User enters "Mumbai" in the city search box
    Then User should see "Mumbai" city in the city list
    And User selects the city "Mumbai"
    Then Homepage should load with the selected city context

  Scenario: Enter an invalid city
    Given User is on the BookMyShow homepage
    When User enters "XYZCity" in the city search box
    Then User should see no city results displayed
