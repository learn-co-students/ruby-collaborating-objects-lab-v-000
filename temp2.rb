##################################################
##################################################





##################################################
##################################################







##################################################
##################################################

# class Song
  
#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(filename)
#     song_title = filename.split(" - ")[0]
#     artist = filename.split(" - ")[1]
#     new_song = self.new(song_title)
#     new_song.artist_name=(artist)
#   end

#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end

# end




##################################################
##################################################


# require 'pry'

# class MP3Importer
#   attr_accessor :path
#   @@files = []

#   def initialize(path)
#     @path = path
#   end

#   def files
#     Dir.glob("#{path}/""*.mp3") do |x| 
#       x.sub!("#{path}/","")
#       x.sub!(/[.mp3]{4}\z/,"")
#         @@files << x
#       end
#   end

#   def import
#     self.files
#     @@files.each do |file_name| 
#     file_name = Song.new_by_filename(file_name)
#     end  
#   end

# end




##################################################
##################################################
require 'pry'

class MP3Importer
  attr_accessor :path
  @@files = []

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/"+"*.mp3") do |x| 
      x.sub!("#{path}/","")
      x.sub!(/[.mp3]{4}\z/,"")
        @@files << x
      end
  end

  def import
    @@files.each do |file_name| 
    file_name = Song.new_by_filename(file_name)
    end  
  end

end


##################################################
##################################################

# require 'pry'

# class MP3Importer
#   attr_accessor :path, :files

#   def initialize(path)
#     @files = Array.new
#     @path = path
#     Dir.foreach(path) do |file|
#       if file =~ /[.mp3]{4}/
#         @files << file
#       end
#     end
#   end

#   def import
#     @files.each do |file|
#       if file =~ /[.mp3]{4}/
#         song = Song.new_by_filename(file)
#         artist = Artist.find_or_create_by_name(song.artist)
#         artist.songs << song
#       end
#     end
#   end
# end







##################################################
##################################################


  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[0]
    artist_name = file_name.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name=(artist_name)
  end



##################################################
##################################################

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[0]
    artist_name = file_name.split(" - ")[1]
    song = Song.new(song)
    song.artist_name=(artist_name)
  end





##################################################
##################################################

# in your Song class you need to create a method 
# artist_name=() that is able to check if your 
# artist exists and grab it, 
# otherwise create a new artist





##################################################
##################################################

def import
    i = 0
    while i < @@files.length
      @@files.each do |element|
        element[i] = Song.new_by_filename(element[i])
      end
   end

##################################################
##################################################
def import
    i = 0
    while i < @@files.length
      @@files[i] = Song.new_by_filename(@@files[i])
      binding.pry
   end
  end  

##################################################
##################################################
def files
    Dir.glob("#{path}/"+"*.mp3") do |x| 
      x.sub!("#{path}/","")
      x.sub!(/[.mp3]{4}\z/,"")
      @@files << x
    end
  end

  def import
    i = 0
    while i < @@files.length
      @@files[i] = Song.new_by_filename(@@files[i])
   end
  end   

##################################################
##################################################

  def self.new_by_filename(name)
    name = name.split(" - ")[1]
    name = Song.new(name)
    artist = name.split(" - ")[0]
    self.artist =  artist_name(artist)
  end

##################################################
############## closest, thus far #################

 def self.find_or_create_by_name(name)
      def self.find(artist)
        self.all.detect {|a| a.name == artist}
      end

      def self.create(name)
        artist = Artist.new(name)
        artist.save
      end
 
    if self.find(name) == false;
      self.create(name)
    end
  end
##################################################
##################################################
  def self.find(artist)
    self.all.detect {|a| a.name == artist}
  end

  def create(name)
    name = Artist.new(name)
  end

  def find_or_create_by_name(name)
    find(name)
    create(name)
  end

##################################################
##########  15 and 5 left   ######################

require 'pry'

class Artist
  attr_accessor :name, :songs, :all
  @@all = []
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(name)
   @songs << name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@artists.include?(self) == false;
      then name = Artist.new(name)
    end
  end

  def print_songs
    @songs.each do |song| 
    puts song.name
    end
  end

end