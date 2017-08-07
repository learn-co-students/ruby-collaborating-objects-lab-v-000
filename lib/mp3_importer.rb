#Build an MP3Importer class that parses a directory of files and sends the filenames to a song class to create a library of music with artists that are unique.

#You'll need two methods: #files and #import.
class MP3Importer
  attr_accessor :path

  # Should write code that responds to MP3Importer.new('./db/mp3s').import. Google how to get a list of files in a directory! Make sure you only get .mp3 files.
  #Your MP3Importer class should also have a path attribute that gets set on initialization.
  def initialize(path)
      @path = path
  end

  def files
    #loads all the mp3 files in the path directory
    #normalizes the filename to just the mp3 filename with no path
    my_files = Dir.glob('./spec/fixtures/mp3s/*')

    my_files.collect do |e|
      files_path_removed = e
      files_path_removed.slice! "./spec/fixtures/mp3s/"
      files_path_removed
    end
  end

  def import
    #imports the files into the library by creating songs from a filename
    files.each{ |filename| Song.new_by_filename(filename) }
  end

end
