require 'pry'

class MP3Importer

  attr_accessor :path, :files
  @@all = []
  

  def initialize(filepath = nil)
    @path = filepath
    if @path != nil
    @files = Dir.entries(filepath).reject{ |e| File.directory? e }
   else
    @files = []
  end
  end
   
   def self.files
    @files
   end

    def self.new_file_only(filename)
    newfile = self.new
    @files = []
    @files<<filename
    newfile.import
    end

def self.find(artistname)
    Artist.all.detect {|i| i.name == artistname}
  end

  def self.create(artistname)
    newartist = Artist.new(artistname)
    @@all<<newartist
    newartist
  end

def import
  @files.each do |x|
    split_array = x.split(/\.mp3| - /)
    artistname = split_array[0]
    Artist.find(artistname) || Artist.create(artistname)
    songname = split_array[1]
    newsong = Song.new(songname)
    Artist.all.last.add_song(newsong)
  end
end

#line 34 might not be optimal bc what if the corresponding artist is not last?


end