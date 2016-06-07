module CoeficientHelper
  def current_coeficient(imdb, rotten, tmdb, metacritic, amount)

    imdb_rating_helper = ((imdb * 100).to_i).to_s
    rotten_rating_helper = ((rotten * 100).to_i).to_s
    metacritic_rating_helper = ((metacritic * 100).to_i).to_s
    tmdb_rating_helper = ((tmdb * 100).to_i).to_s
    amount_helper = amount.to_s

    a = ""
    a += '<div class="sidebar-site coef-imdb">IMDB<span>' + imdb_rating_helper + '%</span></div>'
    a += '<div class="sidebar-site coef-rotten">Rotten<span>' + rotten_rating_helper + '%</span></div>'
    a += '<div class="sidebar-site coef-metacritic">Metacritic<span>' + metacritic_rating_helper + '%</span></div>'
    a += '<div class="sidebar-site coef-tmdb">TMDB<span>' + tmdb_rating_helper + '%</span></div>'
    a += '<div class="sidebar-site coef-number"><span class="text-amount">Movies rated</span><span class="number-amount">' + amount_helper + '</span></div>'
    return a

  end

end