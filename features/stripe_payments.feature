@javascript
Feature: User can donate money
  As a User
  In order to show my appreciation for the service
  I would like to be able to donate some money to the founders

Background:
  Given the following registered users exist
  | email           | password   | affiliation |
  | robin@email.com | mypassword | liberal     |
  Given I am logged in as "robin@email.com"
  And I am on the welcome page
  And I click on the "Donate" link  
  And I click on the "Pay with Card" stripe button

Scenario: User can donate money
  And I fill in the stripe field "Email" with "robin.b@outlook.com"
  And I fill in the stripe field "Card number" with "4242 4242 4242 4242"
  And I fill in the stripe field "CVC" with "123"
  And I fill in the stripe field "MM / YY" with "12/2020"
  And I submit the stripe form  
  Then I should see stripe message "Thanks, you donated EUR 5.00!"

Scenario: User donates with expired card [Sad Path]
  And I fill in the stripe field "Email" with "robin.b@outlook.com"
  And I fill in the stripe field "Card number" with "4242 4242 4242 4242"
  And I fill in the stripe field "CVC" with "123"
  And I fill in the stripe field "MM / YY" with "12/2018"
  And I submit the stripe form  
  Then I should not see stripe message "Thanks, you donated EUR 5.00!"