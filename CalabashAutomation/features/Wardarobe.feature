Feature: Wardarobe feature
Scenario: Navigate to home screen
  When user navigates to option menu
  And user selects to navigate to home screen 
  Then they should be navigated to home screen

Scenario: Navigate to Favourite screen
  When user navigates to option menu
  And user selects to navigate to favourite screen 
  Then they should be navigated to favourite screen

Scenario: User can select favourite combination
  When user navigates to option menu
  And user selects to navigate to home screen 
  And use selects the favourite button
  And navigates to favourite screen  
  Then they should be able to see items
