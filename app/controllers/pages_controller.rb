class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home explore profile]

  def home
  end

  def explore
  end

  def profile
    @user = current_user
  end

  def about
  end
end
