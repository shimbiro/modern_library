Feature: Adding books to database
    Scenario:Admin can add books to database  
        Given am Admin
        When I visit books  page
        And fill in the details of the book
        Then I should add the book to database

