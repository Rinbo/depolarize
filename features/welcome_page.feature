Feature: welcome page
  As a new user
  In order to lessen my bias
  I would like to have a page to chose my political affiliation on

    Scenario: User enters page and gets information about the site and options
      Given I am on the welcome page
      Then I should see "Depolarize"
      And I should see "Liberal"
      And I should see "Conservative"
      And I click on "Liberal"
      Then I should be on the welcome page
