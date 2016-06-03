module CoeficientHelper
  def current_coeficient(guy, imdb)
    a = ""
    a += "<p>Your rating " + guy + "</p>"
    a += "<p>IMDB rating " + imdb + "</p>"
    return a
  end

end