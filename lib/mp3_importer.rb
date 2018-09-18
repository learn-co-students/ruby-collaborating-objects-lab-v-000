require 'pry'
# parses a directory of files and sends the filenames to a song class to create a library of music with artists that are unique
# receive a list of filenames that look like this "Drake - Hotline Bling"
class MP3Importer
  attr_accessor :path, :artist, :song

  def initialize(path)
    @path = path
  end

  # loads all the mp3 files in the path directory
  # normalizes the filename to just the mp3 filename with no path
  def files
    files = Dir["#{path}/*.mp3"].each {|file_name| next if File.directory? file_name}
    files.each {|filename| filename.gsub!(/\A(.....................)/, "")}
    files
  end

  def path
    @path
  end

  # imports the files into the library by creating songs from a filename
  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end

end
