class HomeController < ApplicationController

  def Index
    @users = User.all
  end

end
