class Artist

  attr_accessor :name, :save
  attr_reader :songs

def initialize (name)
  @name = name
  @songs = []
end

#artist array set to empty
@@all = []
#for the artist, need to add an associated song
#associated method (public method)


def self.all
@@all
end



# finds or creates an artist by name
def self.find_or_create_by_name(name)
  self.find_by_name(name) || self.create_by_name(name)
end

#method for self.find_by_name(names)
def self.find_by_name(name)
  #look through the @@all array and find the artist
  @@all.find do |artist|
    artist.name == name
  end
end

# method for self.create_by_name(name)
#creates a new instance of Artist if none exists
def self.create_by_name(name)
  #artist = self.new(name)
  #artist.save
  #artist
  self.new(name).save
end


def add_song(song)
@songs.push(song) unless @songs.include?(song)
song.artist = self unless song.artist == self
end
# adds the artist instance to the @@all class variable
def save
  @@all << self
  self
end

def print_songs
#print out the name
@songs.each{|s| puts s.name}

end

end
