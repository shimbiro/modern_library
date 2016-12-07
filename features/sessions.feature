Feature: Log in Log out
Scenario: User can log in
Given I am Existing user
When I visit login page
Then user should be logged in

Scenario: User can log out
Given I am a logged in user
And user can log out

