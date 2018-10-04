class FeedsController < ApplicationController
  def index       
    @liberal_feed = FeedsService.get_feed('opinion', 'usa-today', 'usatoday.com')
    @conservative_feed = FeedsService.get_feed('opinion', 'the-new-york-times', 'nytimes.com')
    
  end
end
