class PagesController < ApplicationController
  def home
  	@rooms = Room.all
  end
end
