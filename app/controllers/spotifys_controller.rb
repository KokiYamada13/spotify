class SpotifysController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])

  def index
  end

  def search
    if params[:search].present?
      musics = RSpotify::Artist.search(params[:search])
      @musics = musics.first
      p @musics.name
    end

    render '_serch'
  end
end
