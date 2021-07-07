class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def self.find_or_create_by_name(name)
    if exists = self.all.detect{|s| s.name == name}
      exists 
    else 
      new_artist = self.new(name) 
      new_artist.name = name 
      @@all << new_artist 
      new_artist
    end 
  end 
  
  def save
    @@all << self
  end

  def print_songs 
    self.songs.each do |x|
      puts x.name
    end 
  end 
end 



  # def self.find_or_create_by_name(name)
  #   self.find(name) ? self.find(name) : self.create(name)
  # end

  # def self.find(name)
  #   self.all.find {|artist| artist.name == name }
  # end


  # def self.create(name)
  #   self.new(name).tap {|artist| artist.save}
  # end
  
  # def print_songs
  #   songs.each {|song| puts song.name}
  # end