class Artist

attr_accessor :name

def initialize(name)
  @name = name
end

def self.find_or_create_by_name(name)
  if self.artist.nil?
      self.artist = Artist.new(name)
  else
      self.artist.name
    end
  end
end
    
