class CoeficientController < ApplicationController
  before_filter :authenticate_user!

  def index

    @user_imdb_rating = current_user.imdb_rating
    
  end

  def result

    # UPDATE USER RATINGS
    @user_rating = params[:result_path][:user_rating]
    #IMDB
    @film_imdb_rating = params[:result_path][:form_imdb_rating]
    

    respond_to do |format|
      format.html
      format.js
    end  
    
  end

end