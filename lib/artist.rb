class Artist
  @@all = []

  attr_accessor :name,:songs
 
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
  @songs << song
  end

  def save
  @@all << self
  end

  def self.all
    @@all 
  end

  def self.find_or_create_by_name(name)
    result = self.new(name)
    dup_name = false
    @@all.each do |artist_objects|
      if artist_objects.name == name
        dup_name = true
        result = artist_objects

      end
    end
    if dup_name == false
      @@all << result
    end
    result
  end

  def print_songs
    @songs.each do |item|
      puts item.name
    end
  end



end