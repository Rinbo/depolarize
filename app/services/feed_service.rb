require 'news-api'
require 'open-uri'
require 'json'

module FeedService

  def self.get_feed(query)
    newsapi = News.new("ad7564f2301f44a79bb8f5fcbb3e41ef")
    all_articles = newsapi.get_everything(q: query,
      sources: 'cbs-news',            
      language: 'en',
      sortBy: 'relevancy',
      page: 1)    
  end

  def self.get_feed2
    
    url = 'https://newsapi.org/v2/everything?'\
      'q=Politics&'\
      'from=2018-10-03&'\
      'sortBy=popularity&'\
      'apiKey=ad7564f2301f44a79bb8f5fcbb3e41ef'
    req = open(url)
    response = JSON.parse(req.read)
    articles = response["articles"]
  end

end