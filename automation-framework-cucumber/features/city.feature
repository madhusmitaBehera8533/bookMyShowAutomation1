Feature: City Search Module

  Background:
    Given User is on the city selection page

  @ValidCitySearch
  Scenario: Search for a valid city name
    When I search for city "Hyderabad"
    Then I should see "Hyderabad" in the search results
    And verify dropdown text should be "Hyderabad"

  @InvalidCitySearch
  Scenario: Search for an invalid city name
    When I search for city "XyzCity"
    Then I should see an error message "No results found."

  @CityIcons
  Scenario: Select city by choosing a city icon
    When I select the city icon "Delhi"
    Then verify dropdown text should be "Delhi"

  @ViewAllCities
  Scenario: View all cities and validate additional city names
    When I click on "View All Cities"
    Then I should see city names like "Alibaug" and "Aligarh" 
    And verify "Alibaug" and "Aligarh" should not be in popular cities
