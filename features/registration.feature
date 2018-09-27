Feature: Registration
    As a user
    In order to be able to register for an account
    I would like to be able to provide my details on the register page

    Scenario: Successfull registration as a new user
        Given That I am on the landing page
        And I click on the "Login" link        
        And I click on the "Sign up" link
        Then I am on the signup page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I fill in "Password confirmation" with "mypassword"        
        And I click on the "Sign up" link
        Then I see the message "Signed in successfully."