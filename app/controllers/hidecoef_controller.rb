class HidecoefController < ApplicationController
  before_filter :authenticate_user!

  def update

    @user = current_user
    @user.update(hidecoef: true)
    redirect_to coefficient_url

  end

end