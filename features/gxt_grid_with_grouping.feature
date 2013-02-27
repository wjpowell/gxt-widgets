@Ignore
Feature: Gxt Grid With Grouping
  As a Gxt Developer
  I want to control a Gxt Grid with grouping using a Widget
  So that I can interact with the grid and groups as a single control

  Background:
    Given I am on the Gxt Examples page
    And I open the Grouping Grid Example
    And I retrieve a GxtGroupingGrid widget

  Scenario: I should know the group headings and count
    Then The grid should contain 4 groups
    And The group headings should contain
      |Accounts|General Administration|Information Technology|Marketing|

  Scenario: I should be able to collapse a group
    When The "Information Technology" Group is expanded
    And I collapse the "Information Technology" group
    Then The rows should not be visible

   Scenario: I should be able to expand a group
     When The "Information Technology" Group is collapsed
     And I expand the "Information Technology" group
     Then the rows should be visible

   Scenario: I should be able to sort (ascending) groups by the grouping column
     When The data is grouped by "Department"
     And I sort the "Department" column Ascending
     Then the group headings should contain in order
       |Accounts|General Administration|Information Technology|Marketing|

  Scenario: I should be able to sort (descending) groups by the grouping column
    When The data is grouped by "Department"
    And I sort the "Department" column Descending
    Then the group headings should contain in order
      |Marketing|Information Technology|General Administration|Accounts|

   Scenario: I should be able to use the column menu to change the grouping field
     When I click on the "Designation" column drop down menu
     And I select "Group By This Field"
     Then The grid should contain 7 groups
     And The group headings should contain
      |CTO|Executive|Executive Director|General Manager|Project Manager|S/W Engineer|Senior S/W Engineer|




