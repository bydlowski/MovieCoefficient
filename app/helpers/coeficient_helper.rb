module CoeficientHelper
  def current_coeficient(user, imdb, rotten)

    if (imdb.to_f > 0 && rotten.to_f > 0 && user.to_f > 0)
      a = ""
      a += "<p>User rating " + user + "</p>"
      a += "<p>IMDB rating " + imdb + "</p>"
      a += "<p>Rotten rating " + rotten + "</p>"
      return a
    elsif (imdb.to_f > 0 && rotten.to_f > 0)
      a = ""
      a += "<p>There was something wrong with your imput</p>"
      return a
    else 
      a = ""
      a += "<p>Please pick another movie. The selected one does not have a rating on IMDB, Rotten Tomatoes, Metacritic or The Movie DB</p>"
      a += "<p>This rating was not saved in your coeficient</p>"
      return a
    end

  end

end