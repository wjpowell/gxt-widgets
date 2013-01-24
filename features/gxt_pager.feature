Feature: Use Widgets to controls the gxt Local Pagination example
    As a gxt developer
    I want test widgets for Local pagination
    So that I can easily control control common components
    on my application.

  Background:
    Given I am on the Gxt Examples page
    And I have Local Pagination open

  Scenario: Click next page
    When I click next page
    Then I should be on page "2"
    And "Chad Andrews" should be listed in the grid

  Scenario: Click last page
    When I click last page
    Then I should be on page "3"
    And "Claudio Engle" should be listed in the grid

  Scenario: Click fist page
    When I click last page
    And I click on previous page
    Then I should be on page "2"
    And "Chad Andrews" should be listed in the grid

  Scenario: Click previous page
    When I click last page
    And I click on first page
    Then I should be on page "1"
    And "Hollie Voss" should be listed in the grid

  Scenario: Type page 3 into the box
    When type "3" into the page box
    Then I should be on page "3"
    And "Claudio Engle" should be listed in the grid

