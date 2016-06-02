class CoeficientController < ApplicationController
  before_filter :authenticate_user!

  def index
    
  end

  def result
    @this_number = params[:result_path][:name]
    respond_to do |format|
      format.html
      format.js
    end
  end

end