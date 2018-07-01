require 'pry'
class Song

  attr_accessor :name, :artist, :genre, :count

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    total_genre = {}
    @@genres.each do |genre|
    total_genre[genre] = @@genres.count {|x| x == genre}
  end
    total_genre
  end

  def self.artist_count
    total_artists = {}
    @@artists.each do |artist|
    total_artists[artist] = @@artists.count {|x| x == artist}
  end
    total_artists
  end
  
end
