# Wardarobeapp
Crowdfire
I have used calabash to demostrate the automation that can happen on this app. This is not the best approach but in given time I want to prove that the app can be automated using any automation framework.
To run - 
1. Navigative to CalabashAutomation folder 
2. Open CLI
3. Use the following command to run the test
 - calabash-android run app-debug.apk features\Wardarobe.feature
4. Installation 
  Install ruby and gem  
  gem install bundler
  gem 'calabash-android'
  gem 'cucumber'

5. OR you can use 'bundle install' there is a gem file with all dependencies.

6. The screen objects can be found using the android device monitor that can display the hierarchical tree of the view/xml files and elements can be capture from there. 

