# class Song
#   attr_accessor :artist, :name
#
#   def initialize(name)
#     @name = name
#   end
#
#   def artist_name=(name)
#     if (self.artist.nil?)
#       self.artist = Artist.new(name)
#     else
#       self.artist.name = name
#     end
#   end
# end
#
# class Artist
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#   end
#
# end

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    @songs_array << song
  end

  def songs
    @songs_array
  end

  def save
    @@all << self
    #maybe?
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find { |n| n.name == artist_name }
      @@all.find { |n| n.name == artist_name }
    else
      name = Artist.new(artist_name)
      name.save
    end
  end

end



artist_1 = Artist.find_or_create_by_name("Michael Jackson")
artist_3 = Artist.find_or_create_by_name("MJ")
artist_2 = Artist.find_or_create_by_name("Michael Jackson")

Artist.all.find { |n| n.name == artist_name }
[11] pry(main)*   if artist_property == artist_name
[11] pry(main)*     puts "already here"
[11] pry(main)*   else
[11] pry(main)*     puts "not here"
[11] pry(main)*   end
[11] pry(main)* end

if Artist.all.detect { |n| song.artist == n }
  #next
else
  song = self.new(song_name)
  song.artist = artist_name
  song
end
