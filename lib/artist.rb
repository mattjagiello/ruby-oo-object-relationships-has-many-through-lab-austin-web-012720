class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all{|x| x.artist == self}
  end

  def self.all
    @@all
  end

end
