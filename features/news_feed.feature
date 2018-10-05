Feature: News Feeds
    As a user
    In order to read depolarized news
    I would like to see news articles

    Background:
        Given the following registered users exist
        | email           | password   | 
        | robin@email.com | mypassword |
        And I am logged in as "robin@email.com"

    Scenario: User should see articles from news-api
        Given I am on the news feed
        Then I should see "Depolarized Feed"
        And I should see a '.article-title' element
        And I should see a '.article-content' element
        And I should see "...Click to continue reading"