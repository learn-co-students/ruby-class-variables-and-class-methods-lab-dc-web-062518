class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
@@artist_count = {}
@@genre_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    if @@artist_count.has_key?(@artist)
      @@artist_count[artist] += 1
    else
      @@artist_count[@artist] = 1
    end
    if @@genre_count.has_key?(@genre)
      @@genre_count[@genre] += 1
    else
      @@genre_count[@genre] = 1
    end
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genre_count
  end

  def self.genres
    new_array = []
    @@genres.each do |element|
      if new_array.include?(element) == false
        new_array << element
      end
    end
    new_array
  end

  def self.artist_count
    @@artist_count
  end

  def self.artists
    new_array = []
    @@artists.each do |element|
      if new_array.include?(element) == false
        new_array << element
      end
    end
    new_array
  end
end
