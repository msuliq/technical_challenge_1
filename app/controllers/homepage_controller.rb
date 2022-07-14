class HomepageController < ApplicationController
  
  def index
    @users = User.all.order(:name)
    @flats = Flat.all.order(:name)
  end

end
