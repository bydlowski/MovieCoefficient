class PagesController < ApplicationController
  attr_accessor :username
  def index
    @user = current_user
    @user_imdb_rating = current_user.imdb_rating
    @user_rotten_rating = current_user.rotten_rating
    @user_metacritic_rating = current_user.metacritic_rating
    @user_tmdb_rating = current_user.tmdb_rating
  end
end