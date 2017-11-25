# class Artist
#   attr_accessor :name, :songs
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def songs
#     @songs
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(new_song)
#     new_song.artist = self
#     @songs << new_song
#   end
#
#   def save
#     Artist.all<<self
#   end
#
#   def self.find_or_create_by_name(artist_name)
#     artist_name_array = Artist.all.collect {|artist|artist.name}
#     if artist_name_array.include?(artist_name)
#       Artist.all.find{|artist|artist.name == artist_name}
#     else
#       new_artist = Artist.new(artist_name)
#     end
#   end
#
#   def self.find(name)
#     self.all.find {|artist|artist.name == name}
#   end
#
#   def save
#     @@all << self
#   end
#
#   def print_songs
#     songs.each {|song| puts song.name}
#   end
# end


class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    Song.find_by_artist(self)
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end


  def add_song(new_song)
       new_song.artist = self
       @songs << new_song
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
