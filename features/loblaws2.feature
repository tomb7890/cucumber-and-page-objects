@loblaws2
Feature: The site should display the store and timeslot after choosing an item, store, and timeslot. 

Scenario: 
  Given A visit to the website 
  When I add an item to the cart 
  And I pick a store 
  Then The homepage should display the correct store  
  And The homepage should display the correct timeslot 
