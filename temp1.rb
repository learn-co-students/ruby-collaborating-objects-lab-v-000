###################################################
###################################################




###################################################
###################################################




###################################################
###################################################




###################################################
###################################################





###################################################
###################################################


 Dir.glob("./db/mp3s/*.mp3") do |x| 
    x.gsub!(/[.mp3]{4}\z/,"")
    x.sub!(/.{10}/,"")
    @files << x


###################################################
###################################################


"#{path}/*.mp3"



###################################################
###################################################
    puts "Variables report: "
    puts "name: #{name}"
    puts "name = filename.split(" - ")[1]:#{filename.split(" - ")[1]}"
    puts "artist:   #{artist}" 
    puts "artist = filename.split(" - ")[0]: #{filename.split(" - ")[0]}"
    puts "Song.new(song_name): #{[Song.new(name)]}"
    puts "artist: #{artist}"

###################################################
###################################################
# early iteration, trying to parse filename and pass
# it to Song.new      in song.rb 

  def self.new_by_filename(name)
    name = name.split(" - ")[1] 
    artist = name.split(" - ")[0]
    name = Song.new(name)
    name.artist = artist
   end
end

###################################################
###################################################
# method for retrieving filenames from a directory, 
# using Regex to remove leading chars and trailing chars, 
# splitting the 3 values of Artist, Title, Genre into separate
# arrays. 

require 'pry'

class MP3Importer
  attr_accessor :name, :path, :artist, :title, :genre

  def initialize(path)
    @path = path
    @asdf = []
    @all_artists = []
    @all_titles = []
    @all_genres = []
  end

  def files
    element = []
    Dir.glob("./db/mp3s/*.mp3") do |x| 
      x.gsub!(/[.mp3]{4}\z/,"")
      x.sub!(/.{10}/,"")
      @asdf << x
      @asdf.each do |str| element = str.split(" - ")
      @all_artists << element[0]#if @all_artists.include?(element[0])==false;
      @all_titles <<  element[1]
      @all_genres << element[2]
      end
    end
    binding.pry
  end
end



###################################################
###################################################

require 'pry'

class MP3Importer
  attr_accessor :name, :path, :files
  
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.glob(path) do |x| 
      x.gsub!(/[.mp3]{4}\z/,"")
      x.sub!(/.{10}/,"")
      files << x
  binding.pry
    end 

    #files
    # loads all the mp3 files in the path directory
    # normalizes the filename to just the mp3 filename 
    # with no path (FAILED - 7
  

  def import
    name = Song.new(name)
    end
  end
end

###################################################
###################################################