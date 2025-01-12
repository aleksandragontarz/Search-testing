Feature: Searching for "semrush" on Bing with content filters

  Scenario: Filtering search results by "Video"
    Given I am on bing.com
    When I search for "semrush"
    And I filter results by "Video"
    Then I should see only video results related to "semrush"

  Scenario: Filtering search results by "News"
    Given I am on bing.com
    When I search for "semrush"
    And I filter results by "News"
    Then I should see only news results related to "semrush"

  Scenario: No filter applied
    Given I am on bing.com
    When I search for "semrush"
    Then I should see all results related to "semrush"

  Scenario: Searching for " semrush" with a leading space and filtering by maps
    Given I am on bing.com
    When I search for " semrush"
    And I filter results by "Maps" 
    Then I should see results related to "semrush" ignoring the leading space
