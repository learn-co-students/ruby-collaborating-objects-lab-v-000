class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  #Dir["#{@path}/*.mp3"]
  def files  
    @files = Dir.entries(@path).select {|file| file.length > 2}
  end

  def import
    @files = Dir.entries(@path).select {|file| file.length > 2}
    @files.each {|file|
      artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    }
  end

end