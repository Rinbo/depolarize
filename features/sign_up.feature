Feature: Sign up page (with Devise)
    As a new user
    In order to sign up to the service
    I would like to have a signup page

    Scenario: Successfull sign up as a new user
        Given That I am on the sign up page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I fill in "Password confirmation" with "mypassword"        
        And I click on the "Sign up" link
        Then I should see "Welcome! You have signed up successfully."