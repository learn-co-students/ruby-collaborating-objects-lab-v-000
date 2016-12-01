class Artist

attr_accessor :name

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @songs = []
end

def songs
  @songs
end

def add_song(songs)
  @songs << songs
end

def save
  self.class.all << self
end

def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      self.all.each do |artist|
        if artist.name == name
          return artist
        end
      end
    else
      name = self.new(name)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end