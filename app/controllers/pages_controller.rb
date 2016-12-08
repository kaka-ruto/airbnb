class PagesController < ApplicationController
  def home
  	@rooms = Room.all
  end

  def search
  	
  end
end
