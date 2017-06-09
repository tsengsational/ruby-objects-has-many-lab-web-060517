require 'pry'
class Artist
  attr_accessor :name

  @@songs = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    # binding.pry
    @@songs << song
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count = @@songs.size
  end

end
