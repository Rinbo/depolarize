Feature: Authentication (with Devise)
    As a new user
    In order to get a feed worthy of depolarization
    I would like to be able to signup with my selected affiliation

    Background:
        Given the following registered users exist
            | email        | password   | 
            | hi@email.com | mypassword |
    
    Scenario: Successfull sign up as a new user with affiliation
        Given I am on the welcome page
        When I click on the "Liberal" button
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I fill in "Password confirmation" with "mypassword"        
        When I click on the "Sign up" link
        Then I should see "Welcome! You have signed up successfully."
        And I should see "Depolarized Feed"

    Scenario: Registered user can successfully login and signout
        Given I am on the welcome page
        When I click on the "Login" link
        Then I am on the login page
        When I fill in "Email" with "hi@email.com"
        And I fill in "Password" with "mypassword"
        And I click on the "Log in" link
        Then I should see "Signed in successfully."
        When I click on the "Signout" link
        Then I should see "Signed out successfully."
