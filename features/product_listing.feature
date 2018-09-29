@javascript

Feature: List products

    As a user,
    In order to be able to pick a product
    I would like to see the products available with a name, description and price

    Background: 
        Given the following categories exist
            | name  |
            | Mains |
        And the following products exist
            | name      | description                                 | price | category |
            | Meatballs | Delicious pork balls in a rich tomato sauce | 190   | Mains    |

    Scenario: Product successfully shown on landing page
        Given That I am on the landing page
        Then I should see "Meatballs"
        And then I wait 2 seconds
        And I should see "Delicious pork balls in a rich tomato sauce"
        And I should see "190" 