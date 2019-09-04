class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  #Parses through a directory of files
  #collects filenames and saves just the filename, not ext

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |filename|filename.gsub("#{path}/", "")}
  end

  #sends the filenames to a song class to create a music library

  #the library should be made up of music with artists that are unique
  # # # this is probably done on the artist class.
  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end
