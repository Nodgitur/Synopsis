class HomeController < ApplicationController
  def index
    @country = request.location.country
    @city = request.location.city
  end
end