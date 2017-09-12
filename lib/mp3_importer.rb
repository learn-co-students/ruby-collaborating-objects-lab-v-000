class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    #grep searches one or more input files for lines containing match
    #entries returns an array containing all of the filenames in the given directory
    Dir.entries(self.path).grep(/.mp3/)
  end
  def import
    #interacts with Song class and method new_by_filename
    #uses MP3Importer files method to parse through each file 
    files.map {|f| Song.new_by_filename(f)}
  end
end
