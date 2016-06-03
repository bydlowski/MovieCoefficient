class ChangeColumnInUsers < ActiveRecord::Migration

  def change
    add_column :users, :imdb_rating_array, :string, array: true, default: '{}'
    add_column :users, :rotten_rating_array, :string, array: true, default: '{}'
    add_column :users, :metacritic_rating_array, :string, array: true, default: '{}'
    add_column :users, :tmdb_rating_array, :string, array: true, default: '{}'
  end

end
