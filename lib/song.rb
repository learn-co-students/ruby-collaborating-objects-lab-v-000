
class Song
attr_accessor :artist, :name
@@all = []

  def initialize(name = nil)
      @name = name if name
  end

  def name
    @name
  end

  def self.new_by_name(name)
    new_song = self.new 
    new_song.name = name 
    new_song 
  end 

  def self.find_by_name(name)
    self.all.detect {|song| song.name = name}
  end 

  def self.find_or_new_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.new_by_name(name)
    end 
  end

  def self.new_by_filename(filename)
    metadata = filename.split(/( - |\.)/)
    song = self.find_or_new_by_name(metadata[2])
    song.artist = Artist.find_or_create_by_name(metadata[0])
    song 
  end

  def self.create_from_filename(filename)
    metadata = filename.split(/( - |\.)/)
    song = self.find_or_create_by_name(metadata[2])
    song.artist = Artist.find_or_create_by_name(metadata[0])
    song 
  end 

  def self.create_by_name(name)
    new_song = self.new.save
    new_song.name = name
    new_song 
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else 
      self.create_by_name(name)
    end 
  end

  def save 
    @@all << self
    self
  end 

  def self.all
    @@all
  end

end 