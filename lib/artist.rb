class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.map do |song|
    song.artist
  end
  end

  def genres

  end

  def new_song(name, genre)

  end
end
