class FoursquaresController < ApplicationController

  def index
    @client_id = ENV["FOURSQUARE_ID"]
  end

  def callback
    @token = params[:access_token]
  end

  def search
    @info = Foursquare.search.inspect
  end

  def checkin
    @response = Foursquare.checkin
  end

end
