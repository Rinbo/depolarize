require 'open-uri'
require 'json'

module FeedService  

  def self.get_feed    
    url = "https://newsapi.org/v2/everything?"\
      "q=Politics&"\
      "from=2018-10-03&"\
      "sortBy=popularity&"\
      "apiKey=#{Rails.application.credentials.news[:api_key]}"
    req = open(url)
    response = JSON.parse(req.read)
    response["articles"]
  end

end