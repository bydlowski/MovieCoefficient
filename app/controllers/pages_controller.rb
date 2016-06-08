class PagesController < ApplicationController
  attr_accessor :username
  def index
    @user = current_user
  end
end