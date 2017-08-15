# MP3Importer
#   #initialize
#     accepts a file path to parse mp3 files from
#   #files
#     loads all the mp3 files in the path directory
#     normalizes the filename to just the mp3 filename with no path
#   #import
#     imports the files into the library by creating songs from a filename

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir[@path + "/*"]
    @files = files.collect do |file_path|
      file_path.gsub(@path + "/", "")
    end
    @files
  end

  def import
    self.files
    @files.collect do |file|
      Song.new_by_filename(file)
    end.uniq
  end
#
#
#
#
end
