class Artist
  attr_accessor :name, :song, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    test = []
    Song.all.select do |song|
    song.artist == self
  end
  end

  def genres
    Song.all.select do |song|
    song.genre == self
  end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end
end
