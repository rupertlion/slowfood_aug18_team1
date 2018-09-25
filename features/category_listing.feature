Feature: List categories

    As a user,
    In order to help me chose products
    I would like to see the products presented by category

    Background: 
        Given the following category exists
            | name      |
            | Mains     | 

    Scenario: Category successfully shown on landing page
        When I visit the landing page
        Then I should see "Mains"