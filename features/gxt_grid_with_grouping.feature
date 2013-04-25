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
      |Heading|
      |Department: Accounts (1 Item)|
      |Department: General Administration (1 Item)|
      |Department: Information Technology (7 Items)|
      |Department: Marketing (3 Items)|


  Scenario: I should be able to collapse a group
    When The "Information Technology" Group is expanded
    And I collapse the group
    Then The rows should not be visible

   Scenario: I should be able to expand a group
     When The "Information Technology" Group is collapsed
     And I expand the group
     Then the rows should be visible

   Scenario: I should be able to sort (ascending) groups by the grouping column
     When I open the "Department" column menu
     And I select Group By This Field
     And I open the "Department" column menu
     And I sort ascending
     Then the group headings should contain in order
       |Accounts|General Administration|Information Technology|Marketing|

  Scenario: I should be able to sort (descending) groups by the grouping column
    When I open the "Department" column menu
    And I select Group By This Field
    And I open the "Department" column menu
    And I sort descending
    And The group headings should contain
      |Heading|
      |Department: Accounts (1 Item)|
      |Department: General Administration (1 Item)|
      |Department: Information Technology (7 Items)|
      |Department: Marketing (3 Items)|


  Scenario: I should be able to use the column menu to change the grouping field
     When I open the "Department" column menu
     And I select Group By This Field
     When I open the "Designation" column menu
     And I select Group By This Field
     Then The grid should contain 7 groups
     And The group headings should contain
      |Heading|
      |Designation: CTO (1 Item)|
      |Designation: Executive (3 Items)|
      |Designation: Executive Director (1 Item)|
      |Designation: General Manager (1 Item)|
      |Designation: Project Manager (1 Item)|
      |Designation: S/W Engineer (3 Items)|
      |Designation: Senior S/W Engineer (2 Items)|




