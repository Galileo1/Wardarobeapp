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

# Scenario: User can browser through the different wardarobe collection
#   When user navigates to option menu
#   And user selects to navigate to home screen 
#   Then user can browser through the wardrobe collection 


# Scenario: User can add more wardrobe to their collection
#   When user navigates to option menu
#   And user selects to navigate to home screen 
#   And user chooses to add clothes to list
#   And user chooses to add upper garment using camera feed
  

