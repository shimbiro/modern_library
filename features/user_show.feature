Feature: Show User    
    Scenario: As a registered user 

         Given am a registered user
         When I visit the show page
         Then Details of the user are displayed
         And I should see the users details
