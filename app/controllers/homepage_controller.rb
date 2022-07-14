class HomepageController < ApplicationController
  def index
    @users = User.order(:name)
    @flats = Flat.order(:name)
  end
end
