class HidesearchController < ApplicationController
  before_filter :authenticate_user!

  def update

    @user = current_user
    @user.update(hidesearch: true)
    redirect_to root_url

  end

end