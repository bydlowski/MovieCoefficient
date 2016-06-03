class CoeficientController < ApplicationController
  before_filter :authenticate_user!

  def index

    @user_imdb_rating = current_user.imdb_rating
    @user = current_user
    
  end

  def update  
    @user = current_user
    @user_rating = params[:result_path][:user_rating]
    @film_imdb_rating = params[:result_path][:form_imdb_rating]
    @user.update(imdb_rating: @film_imdb_rating)
    flash.now[:alert] = "Product donated!"

    respond_to do |format|
      format.html
      format.js
    end 

  end

  def result

    # UPDATE USER RATINGS
    @user_rating = params[:result_path][:user_rating]
    #IMDB
    @film_imdb_rating = params[:result_path][:form_imdb_rating]
    @user.update_all(imdb_rating: @film_imdb_rating)
    #flash[:notice] = 'Book was successfully updated.'
    

    respond_to do |format|
      format.html
      format.js
    end  
    
  end

end