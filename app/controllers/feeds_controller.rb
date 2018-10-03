class FeedController < ApplicationController
  def index    
    @articles = FeedService.get_feed
  end
end
