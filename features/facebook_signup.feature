Feature: User can log in using hers/his Facebook credentials
    As a user of the system
    In order to simplify the sign up/sign in process
    I would like to be able to authenticate myself using Facebook

Scenario: Visitor clicks on the 'login with Facebook' and gets authenticated
    Given I am on the welcome page
    And I click on the "Liberal" link
    And I click on the "Login with Facebook" link
    Then I should be redirected to the news feed
    And I should see "Successfully authenticated from Facebook account"
