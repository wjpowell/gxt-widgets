Feature: Gxt Basic Tree
  In order to interact with trees
  Testers need to be able to search and navigate trees

Background:
  Given I am on the Gxt Examples page
  And I have the Basic Tree opened

  Scenario: Retrieve a tree
    When I retrieve a GxtTree widget
    Then I should know it is visible

  @watir_only
  Scenario: Determine if a tree exists
    When I retrieve a GxtTree widget
    Then I should know it exists

  Scenario: Count the number top level elements
    When I get the top level tree nodes
    Then the count should be 3

  Scenario: Expand the first element
    When I retrieve a GxtTree widget
    And I expand the "General Administration" tree node
    Then The "General Manager" node should be visible
    And The "Executive" node should be visible

  Scenario: Expand an element to the second level
    When I retrieve a GxtTree widget
    And I expand the "General Administration" tree node
    And I expand the "General Manager" tree node
    Then The "Hollie Voss" node should be visible

  Scenario: Click on the joint to expand a node
    Given I retrieve a GxtTree widget
    And the "Information Technology" node is collapsed
    When I click on the node joint
    Then the node should be expanded

  Scenario: Click on the joint to collapse a node
    Given I retrieve a GxtTree widget
    And the "Information Technology" node is expanded
    When I click on the node joint
    Then the node should be collapsed

  Scenario: double-click on the label to collapse a node
    Given I retrieve a GxtTree widget
    And the "Information Technology" node is expanded
    When I double-click on the node
    Then the node should be collapsed

  Scenario: double-click on the label to expand a node
    Given I retrieve a GxtTree widget
    And the "Information Technology" node is collapsed
    When I double-click on the node
    Then the node should be expanded