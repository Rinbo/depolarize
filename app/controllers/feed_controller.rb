class FeedController < ApplicationController
  def index
    #@articles = FeedService.get_feed("bitcoin")
    @articles = FeedService.get_feed2
  end
end
