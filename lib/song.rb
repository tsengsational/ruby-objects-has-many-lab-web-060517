require 'pry'
class Song
  attr_accessor :name
  attr_writer :artist

  def initialize(name)
    @name = name
    @artist = "artist"
  end

  def artist
    @artist
  end

  def artist_name
    if @artist.class == Artist
      @artist.name
    else
      return nil
    end
  end

end
