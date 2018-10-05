class WelcomeController < ApplicationController
  def index
    redirect_to feeds_path if current_user
  end
end
