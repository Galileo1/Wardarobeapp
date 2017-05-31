require 'calabash-android/calabash_steps'

When(/^I select environment "([^"]*)" from "([^"]*)"$/) do |arg1, arg2|
  spinner = query("android.widget.Spinner marked:'#{arg2}'")
  if spinner.empty?
   tap_when_element_exists("android.widget.Spinner * marked:'#{arg2}'")
 else
   touch(spinner)
 end

 touch("* {text CONTAINS '#{arg1}'}")
end


# opens the right hand side network menu
When /^I swipe menu open$/ do
perform_action('drag', 95, 10, 50, 50 , 1)
end


When(/^I select "([^"]*)" from MTM$/) do |arg1|
  element = "android.support.v7.widget.AppCompatTextView marked:'#{arg1}'"
  elementByText =  query("android.support.v7.widget.AppCompatTextView {text CONTAINS '#{arg1}'}")
  found = false
  if !element_exists(element)
      if !elementByText.empty?
        found = true
        touch(elementByText)
      else
        wait_poll(:until_exists => element,
                :timeout => 20) do
                 scroll_down
        end
      end
      if !found
        if element_exists(element)
          touch(element)
        else
          screenshot_and_raise("failed " + "'#{arg1}'")
        end
      end
  else
      touch(element)
  end
end
#Then /^I touch the "([^\"]*)" text$/ do |text|
#   tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
# end

# Then /^I scroll until I see the "([^\"]*)" text$/ do |text|
#   q = query("TextView text:'#{text}'")
#   while q.empty?
#     scroll_down
#     q = query("TextView text:'#{text}'")
#   end
# end

# When /^I do swipe left$/ do
#   perform_action('swipe', 'left')
# end
#
# When /^I do swipe right$/ do
#   perform_action('swipe', 'right')
# end


# When(/^I pan left$/) do
#   #pan("* id:'debug_drawer_container'",:left)
#   pan("* id:'debug_view'",:left)
#   #perform_action('drag',100,0,50,50,50)
# end
#
# When(/^I pan right$/) do
#   #pan("* id:'debug_drawer'",:right)
# end

# When(/^I wait for sometime$/) do
#   sleep(5)
# end

# When (/^I scroll downwards$/) do
#   scroll("android.support.v7.widget.RecyclerView", :down)
# end
#
# When(/^I scroll down until I find Ask a question) do
#   scroll("TextView id:'Ask a question'")
# end
# When (/^I scroll down to questions$/) do
# scroll_down("textViewQuestionsLabel:'Ask a question'")
# end

# When(/^I scroll down to "([^"]*)"$/) do |my_view|
#   scroll("TextView id:'#{my_view}'", :down)
# end


# def scroll_to_top_or_bottom(direction)
#  current_screen_state = query("%_Current_screen_name%") - some label etc
#
#  begin
#  prev_screen_state = current_screen_state
#  case direction
#  when :up
#  scroll("#{$scroll_view}", :up) - based on how it calls in your app: CustomRecyclerView, RecyclerView etc
#  when :down
#  scroll("#{$scroll_view}", :down) - based on how it calls in your app: CustomRecyclerView, RecyclerView etc
#  end
#  current_screen_state = query("%_Current_screen_name%") - the same line from the beginning of method
#  end while (current_screen_state != prev_screen_state)
# end
