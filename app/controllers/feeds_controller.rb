class FeedsController < ApplicationController
  @@arr = (1..100).to_a
  def index
    @switch = @@arr.pop 
    @liberal_feed = FeedsService.get_feed('opinion', 'usa-today', 'usatoday.com')
    @conservative_feed = FeedsService.get_feed('opinion', 'the-new-york-times', 'nytimes.com')    
  end
end
