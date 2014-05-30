Feature: Optimize http resource
  In order to improve the performance of the cached website in noDelay
  As a website administrator
  I want optimize the content in the resoucrce

  Scenario: Trigger Optmize HTML
    Given I have requested to cache a HTML resource of my website
    And The resource is not in optimization ignore list
    When The resource is ready to be cached
    Then The HTML resource must be compressed
    And trigger optimization of other releated resources

  Scenario: Trigger Optmize CSS
    Given The CSS resource is not in optimization ignore list
    When Cache request of a CSS resource is triggered
    Then the CSS resource must be optimized
    