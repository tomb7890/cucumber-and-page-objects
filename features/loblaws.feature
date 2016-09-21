@loblaws1
Feature: Search for butter and count the number of $.30 badges appear in the results and assert that number matches the number you can visible observe.

Scenario: Count the thirty cent badges 
Given A visit to the website  
When I search for butter 
Then I should find 1 matches 
