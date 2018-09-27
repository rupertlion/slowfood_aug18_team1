Feature: Login capabilities
    As a user,
    In order to be able to login to my personal account,
    I would like to be able to fill in my details on the login page.

    Background:
        Given the following registered users exist
            | email           | password   | 
            | email@email.com | mypassword |

    Scenario: Registered user can successfully login
        Given That I am on the landing page
        And I click on the "Login" link
        Then I am on the login page
        And I fill in "email" with "email@email.com"
        And I fill in "password" with "mypassword"
        And I click on the "Submit" link
        Then I see the message "Logged in as"





