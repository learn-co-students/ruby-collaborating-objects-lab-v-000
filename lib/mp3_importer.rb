class MP3Importer
# parses a directory of files and sends the filenames to a song class to create a library of music with artists that are unique

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect do |file|
      file.gsub("#{path}/", "")
    end
    #@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end








end
