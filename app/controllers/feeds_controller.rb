class FeedsController < ApplicationController
  def index    
    @articles = FeedsService.get_feed
  end
end
