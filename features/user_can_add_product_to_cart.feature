@javascript

Feature: User can add product to cart

    As a user,
    In order to select products for later purchase
    I would like to be able to add products to my cart

    Background: 
        Given the following categories exist
            | name  |
            | Mains |
        And the following products exist
            | name      | description                                 | price | category |
            | Meatballs | Delicious pork balls in a rich tomato sauce | 190   | Mains    |
        And the following registered users exist
            | email           | password   | 
            | email@email.com | mypassword |
        And the user is logged in as "email@email.com"

    Scenario: Product successfully shown on landing page
        Given That I am on the landing page
        And I should see "Meatballs"
        And I should see "Delicious pork balls in a rich tomato sauce"
        And I should see "190"
        And I click on the "Add to cart" link
        And I click on the "Cart" link
        Then I am on the cart page
        And I should see "Meatballs"
        And I should see "Delicious pork balls in a rich tomato sauce"
        And I should see "190"