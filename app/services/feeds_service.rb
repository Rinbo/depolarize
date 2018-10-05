require 'news-api'
require 'json'

module FeedsService  
  
  def self.get_feed(query, source, domains)
    newsapi = News.new(Rails.application.credentials.news[:api_key])
    newsapi.get_everything(q: query,
                          sources: source,
                          domains: domains,                          
                          language: 'en',
                          sortBy: 'relevancy',
                          page: 2)  
    
  end
end
