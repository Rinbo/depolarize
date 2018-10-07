Feature: User can donate money
  As a User
  In order to show my appreciation for the service
  I would like to be able to donate some money to the founders

Background:
  Given the following registered users exist
  | email           | password   | affiliation |
  | robin@email.com | mypassword | liberal     |

Scenario: User can donate money
  Given I am logged in as "robin@email.com"
  And I visit the donation page  
  And I click on the "Pay with Card" stripe button
  And I fill in the stripe field "email" with "robin.b@outlook.com"
  And I fill in the stripe field "Card number" with "4242 4242 4242 4242"
  And I fill in the stripe field "CVC" with "123"
  And I fill in the stripe field "Expiry" with "12/2020"
  And I submit the stripe form
  Then I should be on the feeds page
  And I should see "Thank you for your donation!"

 
