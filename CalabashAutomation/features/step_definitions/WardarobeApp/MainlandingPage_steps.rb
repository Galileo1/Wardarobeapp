require_relative('./MainlandingPage.rb')
require_relative('./MenuDrawerPage.rb')
require_relative('./CommonPageElement.rb')


When(/^user navigates to home screen$/) do
  tap_when_element_exists(MainlandingPage::HOME_NAV)
end

When(/^user navigates to option menu$/) do
   tap_when_element_exists(MainlandingPage::MENU_BUTTON)   
end

# Then(/^user is on home screen$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^user can see option menu$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

When(/^user selects to navigate to home screen$/) do
    tap_when_element_exists(MenuDrawerPage::HOME_SCREEN)  
end

Then(/^they should be navigated to home screen$/) do
  element_exists(MainlandingPage::FAVOURITE_BUTTON)
end


When(/^user selects to navigate to favourite screen$/) do
  tap_when_element_exists(MenuDrawerPage::FAVOURITE_SCREEN)  
end

Then(/^they should be navigated to favourite screen$/) do
  element_exists(CommonPageElement::DELETE_BUTTON)
  element_exists(CommonPageElement::UPPER_GARMENT)
  element_exists(CommonPageElement::LOWER_GARMENT)
end


When(/^use selects the favourite button$/) do
   tap_when_element_exists(MainlandingPage::FAVOURITE_BUTTON)
end

When(/^navigates to favourite screen$/) do
  tap_when_element_exists(MainlandingPage::MENU_BUTTON)
  tap_when_element_exists(MenuDrawerPage::FAVOURITE_SCREEN)  
end

Then(/^they should be able to see items$/) do
  element_exists(CommonPageElement::DELETE_BUTTON)
  element_exists(CommonPageElement::UPPER_GARMENT)
  element_exists(CommonPageElement::LOWER_GARMENT)
  
end