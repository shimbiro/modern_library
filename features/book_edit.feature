Feature: Edit book
    Scenario:Admin can edit book in database
        Given am admin
        When I visit edit book page
        And edit the details of the book
        And i should update the database
