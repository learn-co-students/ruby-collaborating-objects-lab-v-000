class MP3Importer

attr_accessor :path
#accepts a file path to parse mp3 files from
  def initialize(path)
    @path = path
  end
#loads all the mp3 files in the path directory
#normalizes the filename to just the mp3 filename with no path using regex
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect {|filename|
     filename.gsub("#{path}/", "")}
  end
#imports the files into the library by creating songs from a filename
  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end

end
