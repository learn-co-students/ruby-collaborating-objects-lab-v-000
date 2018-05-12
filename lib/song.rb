class Song
  attr_accessor :name, :artist
  @@songs = []
  
  def save
    @@songs << self
  end
  
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
  def self.new_by_filename(file_name)
    new_instance = self.new(file_name.split(" - ")[1], file_name.split(" - ")[0])
    new_instance.artist_name=(file_name.split(" - ")[0])
    new_instance.save
    new_instance
  end
  
  
end