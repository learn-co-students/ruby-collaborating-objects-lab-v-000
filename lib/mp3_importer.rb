class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    #initialize an instance of the MP3Importer class with a given directory path
    @path = path 
  end

  def files
    #create an array of files by:
      #using Dir to get all files with the general form including the path and the .mp3 ending
      #iterating over the files and collecting the adjusted filenames in an array
      #adjusting each filename by, for each filename, splitting into an array at the backslash and keeping only the last index value
    @files = Dir["#{@path}/*.mp3"].collect{ |filename| filename.split("/").last}
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
