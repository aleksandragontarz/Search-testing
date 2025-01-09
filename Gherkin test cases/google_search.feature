Feature: Searching for "prowly" on Google with date filters

  Scenario: Filtering search results from the past 24 hours
    Given I am on google.com
    When I search for "prowly"
    And I filter results by "Past 24 hours"
    Then I should see results related to "prowly" from the past day

  Scenario: Filtering search results from the past week
    Given I am on google.com
    When I search for "prowly"
    And I filter results by "Past week"
    Then I should see results related to "prowly" from the past week

  Scenario: Filtering search results by a specific date range
    Given I am on google.com
    When I search for "prowly"
    And I filter results by a specific date range
    Then I should see results related to "prowly" from the selected range
