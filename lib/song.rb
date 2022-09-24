class Song

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist =artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@artist_count[artist] = @@count
    @@genre_count[genre] = @@count

  end

  def self.count
      @@count
  end

  def self.artists
      @@artists.uniq
  end

  def self.genres
      @@genres.uniq
  end

  def self.genre_count
      @@genre_count
  end

  def self.artist_count
      @@artist_count
  end
end
