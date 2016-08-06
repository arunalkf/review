class HomeController < ApplicationController
  def index
  	@movies = Movie.all.order(:cached_votes_up => :desc)
  	if user_signed_in?
  		redirect_to movies_path
  	end
  end
end
