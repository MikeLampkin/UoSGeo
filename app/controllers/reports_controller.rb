class ReportsController < ApplicationController

  def index
    @users = User.all
  end
end
