class CoeficientController < ApplicationController
  before_filter :authenticate_user!

  def index
    
  end

  def result
    @user_rating = params[:result_path][:user_rating]
    @film_imdb_rating = params[:result_path][:form_imdb_rating]
    respond_to do |format|
      format.html
      format.js
    end
  end

end