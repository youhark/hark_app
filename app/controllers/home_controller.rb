class HomeController < ApplicationController

def index
  @playlists = Playlist.featured
end

end

