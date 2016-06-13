module CoefficientHelper

  def current_coefficient(imdb, rotten, metacritic, tmdb, amount)

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

  def input_check(user, imdb, rotten, metacritic, tmdb)

    unless (imdb.to_f > 0 && rotten.to_f > 0 && tmdb.to_f > 0 && metacritic.to_f > 0)
      a = ""
      a += '<div style="width: 30%;height: 30%;top: 0;right: 0;bottom: 0;left: 0;position: absolute;margin:auto;background-color: white;color: black;padding: 1em;text-align: center;">'
      a += "<p>Please pick another movie. The selected one does not have a rating on IMDB, Rotten Tomatoes, Metacritic or The Movie DB</p>"
      a += "<p>This rating was not saved in your coefficient</p>"
      a += '<p class="close-warning">Close</p>'
      a += '</div>'
      return a
    end

    unless (user.to_f > 0)
      a = ""
      a += '<div style="width: 30%;height: 30%;top: 0;right: 0;bottom: 0;left: 0;position: absolute;margin:auto;background-color: white;color: black;padding: 1em;text-align: center;">'
      a += "<p>There was something wrong with your imput</p>"
      a += '<p class="close-warning">Close</p>'
      a += '</div>'
      return a
    end

    a = ""
    return a

  end

end