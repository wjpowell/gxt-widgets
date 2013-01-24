Feature: Gxt Grid
  In order to interact with tables
  Testers will need access and interrogation ability


  Background:
    Given I am on the Gxt Examples page
    And I have the Basic Grid opened

  Scenario: Retrieve a table
    When I retrieve a GxtGrid widget
    Then I should know it is visible

  @watir_only
  Scenario: Determine if a table exists
    When I retrieve a GxtGrid widget
    Then I should know it exists

  Scenario: Retrieve the data from a table
    When I retrieve a GxtGrid widget
    Then the data for row "1" should be "Hollie Voss" and "General Administration"
    And the table should have "13" rows
    And row "1" should have "5" columns
    And the data for the first row should be "Employee Name" and "Department"
    And the data for the last row should be "Buster misjenou" and "Accounts"

  Scenario: Retrieve data from a table using a row header
    When I retrieve a GxtGrid widget
    Then the data for row "Gail Horton" should be "Gail Horton" and "Marketing"

  Scenario: Retrieve data from a table using a partial row header
    When I retrieve a GxtGrid widget
    Then the data for row "Newman" should be "Dirk Newman" and "Information Technology"

  Scenario: Retrieve data from a table using a row header in the 2nd column
    When I retrieve a GxtGrid widget
    Then the data for row "General Administration" should be "Hollie Voss" and "General Administration"

  Scenario: Retrieve data from a table using a partial row header in the 2nd column
    When I retrieve a GxtGrid widget
    Then the data for row "Administration" should be "Hollie Voss" and "General Administration"

  Scenario: Retrieve data from a table using a column header
    When I retrieve a GxtGrid widget
    Then the data for column "Slary" and row "2" should be "120000.00"

  Scenario: Retrieve data from a table using a partial column header
    When I retrieve a GxtGrid widget
    Then the data for column "esignation" and row "2" should be "CTO"

  Scenario: Retrieve data from a table using both headers
    When I retrieve a GxtGrid widget
    Then the data for row "Emerson Milton" and column "Department" should be "Information Technology"

  Scenario: Retrieve data from a table with an incorrect row header
    When I retrieve a GxtGrid widget
    Then the data for row "Data20" should be nil

  Scenario: Retrieve data from a table with an incorrect column header
    When I retrieve a GxtGrid widget
    Then the data for row "Chad Andrews" and column "Data20" should be nil
