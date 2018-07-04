require 'pry'

class Song

@@artists = []
@@genres = []
@@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.map do |genre|
      if genre_count[genre]
         genre_count[genre] += 1
      else genre_count[genre] = 1
      end
    end
      genre_count
  end


  def self.artist_count
    artist_count = {}
    @@artists.map do |artist|
      if artist_count[artist]
         artist_count[artist] += 1
      else artist_count[artist] = 1
      end
    end
      artist_count
  end

end

song = Song.new("a", "b", "c")
song = Song.new("a", "b", "c2")
