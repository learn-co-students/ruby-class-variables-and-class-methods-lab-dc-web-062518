require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count+=1
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
    hash = @@genres.group_by {|g| g}
    hash.each do |k, v|
      hash[k] = v.count
    end
  end

  def self.artist_count
    hash = @@artists.group_by {|g| g}
    hash.each do |k, v|
      hash[k] = v.count
      
    end

  end
end
