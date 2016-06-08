class ResetController < ApplicationController
  before_filter :authenticate_user!

  def update

    @user = current_user
    @user.update(coeficient: 0, imdb_rating_array: '', rotten_rating_array: '', metacritic_rating_array: '', tmdb_rating_array: '', amount: '0', imdb_rating: '0.0', tmdb_rating: '0.0', rotten_rating: '0.0', metacritic_rating: '0.0')
    redirect_to coefficient_url

  end

end