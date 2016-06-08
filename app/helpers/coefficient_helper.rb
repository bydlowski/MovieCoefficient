module CoefficientHelper

  def current_coefficient(imdb, rotten, tmdb, metacritic, amount)

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

  def input_check(user, imdb, rotten, tmdb, metacritic)

    if (imdb.to_f > 0 && rotten.to_f > 0 && tmdb.to_f > 0 && metacritic.to_f > 0 && user.to_f > 0)
      a = ""
      a += "<p>User rating " + user + "</p>"
      a += "<p>IMDB rating " + imdb + "</p>"
      a += "<p>Rotten rating " + rotten + "</p>"
      a += "<p>TMDB rating " + tmdb + "</p>"
      a += "<p>Metacritic rating " + metacritic + "</p>"
      return a
    elsif (imdb.to_f > 0 && rotten.to_f > 0 && tmdb.to_f > 0 && metacritic.to_f > 0 )
      a = ""
      a += "<p>There was something wrong with your imput</p>"
      return a
    else 
      a = ""
      a += "<p>Please pick another movie. The selected one does not have a rating on IMDB, Rotten Tomatoes, Metacritic or The Movie DB</p>"
      a += "<p>This rating was not saved in your coefficient</p>"
      return a
    end

  end

end