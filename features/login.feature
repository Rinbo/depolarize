Feature: User login 

    Background:
        Given the following registered users exist
            | email           | password   | 
            | email@email.com | mypassword |

    Scenario: Registered user can successfully login
        Given I am on the welcome page
        And I click on the "Login" link
        Then I am on the login page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I click on the "Log in" link
        Then I should see "Signed in successfully."