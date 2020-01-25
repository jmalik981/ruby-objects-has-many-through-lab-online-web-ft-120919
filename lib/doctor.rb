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
  
  def new_song(name, genre)
    song.new(name, self, genre)
  end
  def songs 
    song.all.select { |song| song.artist == self }
  end
  
  def genres 
    songs.map(&:genre)
  end
end
