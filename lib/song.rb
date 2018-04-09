class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  Artist.find_or_create_by_name(name)
  
end

def self.new_by_filename(filename)
  name = filename.split(" - ")[1]
  new_song = self.new(name)
end

end
