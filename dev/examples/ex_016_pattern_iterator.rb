class Song
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

class Playlist
  include Enumerable  # Adds enumerable methods like map, select

  def initialize
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each(&block)
    @songs.each(&block)  # Delegates iteration to internal array
  end
end

# Usage

playlist = Playlist.new
playlist.add_song(Song.new("Song 1"))
playlist.add_song(Song.new("Song 2"))
playlist.add_song(Song.new("Song 3"))

# Using for-each loop
playlist.each do |song|
  puts "Playing: #{song.title}"
end
