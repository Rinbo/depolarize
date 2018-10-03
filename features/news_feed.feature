Feature: News Feeds
    As a user
    In order to read depolarized news
    I would like to see news articles

    Scenario: User should see articles from news-api
        Given I am on the news feed
        Then I should see "Depolarized feed"
        And I should see '.article-title'
        And I should see '.article-content'
        And I should see "...Click to continue reading"