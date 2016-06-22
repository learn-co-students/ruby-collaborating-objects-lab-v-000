class MP3Importer 
  attr_accessor :path, :songs

def initialize(path)
    @path = path
    @songs = []
  end

def files
  Dir["#{path}/*.mp3"].map {|file| (file.split("/")).last}
end

def import
    files.each{|file_name| 
      @songs << Song.new_by_filename(file_name)}
  end

end


