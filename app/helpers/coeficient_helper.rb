module CoeficientHelper
  def current_coeficient(imdb, rotten, tmdb, metacritic, amount)

    a = ""
    a += "<p>IMDB rating " + imdb.to_s + "</p>"
    a += "<p>Rotten rating " + rotten.to_s  + "</p>"
    a += "<p>TMDB rating " + tmdb.to_s  + "</p>"
    a += "<p>Metacritic rating " + metacritic.to_s  + "</p>"
    a += "<p>User amount " + amount.to_s  + "</p>"
    return a

  end

end