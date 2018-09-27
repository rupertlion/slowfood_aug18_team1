
Feature: List categories

    As a user,
    In order to help me chose products
    I would like to see the products presented by category

    Background: 
        Given the following categories exist
            | name      |
            | Mains     |
            | Desserts  | 
        And the following products exist
            | name      | description                                 | price | category |
            | Meatballs | Delicious pork balls in a rich tomato sauce | 190   | Mains    |
            | Trifle    | Awesome jelly, sponge and custard           | 120   | Desserts |

    Scenario: Category successfully shown on landing page
        Given That I am on the landing page
        Then I should see "Mains"
        Then I should see "Desserts"
        Then I should see "Meatballs"
        Then I should see "Trifle"