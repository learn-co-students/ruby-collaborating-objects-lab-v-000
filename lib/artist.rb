class Artist
  attr_accessor :name, :songs
  @@all = []  

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song    
  end

  def save
    @@all << self     
  end

  def self.all      
    @@all
  end

  def self.find_or_create_by_name(name)   
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)    variable
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)  
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def self.new_by_filename(file_name)
      self.name = file_name.split(" - ")[0]
      self.artist.name = file_name.split(" - ")[1]
  end
  
  def print_songs
    @songs.each do |songs|
      puts "This one sucks too: #{songs}!!"
  end
end
end
