Feature: HTTP Cache
  In order to improve the performance of a website
  As a website administrator
  I want to be able to cache contents of http resource in noDelay application such that it is served faster to the user.

  Scenario: Cache a website
    Given I have a website and a domain to be served from noDelay
    When When I configure the website in noDelay
    Then The website must be cached in noDealy

  Scenario: Serve user request
    Given The requested website has been configured in noDelay
    When A user requests for a resource in that website
    Then The resource must be read from the cache and served to the user
  
  Scenario: Update cache for a resource
    Given The website is configured in noDelay
    When I request for update of a resource
    Then the resource must be updated in the cache
    
  Scenario: Pages in Sitemap.xml are cached
    Given the website nodelay.com is configured to use noDelay 
    And the page index.php is in the sitemap.xml
    When I visit that page
    Then it is delivered from noDelay
    
  Scenario: Pages not in Sitemap.xml are not cached
    Given the website nodelay.com is configured to use noDelay 
    And the page noindex.php is not in the sitemap.xml
    When I visit that page
    Then it is not delivered from noDelay
