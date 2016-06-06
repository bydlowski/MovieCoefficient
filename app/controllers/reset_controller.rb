class ResetController < ApplicationController
  before_filter :authenticate_user!

  def update

    @user = current_user
    @user.update(coeficient: 0, imdb_rating_array: '', rotten_rating_array: '', metacritic_rating_array: '', tmdb_rating_array: '')
    redirect_to coeficient_url

  end

end