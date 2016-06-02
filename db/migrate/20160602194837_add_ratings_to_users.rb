class AddRatingsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :imdb_rating, :float, default: "0"
    add_column :users, :rotten_rating, :float, default: "0"
    add_column :users, :metacritic_rating, :float, default: "0"
    add_column :users, :tmdb_rating, :float, default: "0"
  end
end
