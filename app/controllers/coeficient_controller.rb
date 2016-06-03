class CoeficientController < ApplicationController
  before_filter :authenticate_user!

  def index

    @user_imdb_rating = current_user.imdb_rating
    @user = current_user
    
  end

  def update 

    # UPDATE USER RATINGS
    @user = current_user
    # Get ratings given by the user
    @user_rating = params[:result_path][:user_rating]
    @film_imdb_rating = params[:result_path][:form_imdb_rating]

    # Compare ratings user/website
    def percent_difference(u_rating, w_rating)
      absolute_difference = (u_rating - w_rating).abs
      result = 1 - (absolute_difference / 4)
    end

    if @user.update(rating_param)
      @user.update(imdb_rating: @film_imdb_rating)
    else
      redirect 'coeficient_path'
    end

    respond_to do |format|
      format.html
      format.js
    end 

  end

  def rating_param
     params.require(:result_path).permit(:imdb_rating)
  end

end