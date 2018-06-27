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

  def count
    @@count
  end

  def genre_count
    @@genre_count
  end

  def genres
    @@genres
  end

  def artist_count
    @@artist_count
  end

  def artists
    @@artists
  end
end
