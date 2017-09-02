require 'pry'

class MP3Importer

  attr_accessor :path, :files
  @path = []

  def initialize(path) #accepts file path to parse mp3 files
    @path = path
  end

  def files #loads all mp3 files in the path directory
    #normalizes the filename to just the mp3 filename w/no path
      Dir['path/to/dir/*.mp3'].select { |e| File.file?(e) }
      # files = Dir["/./.mp3"]
      # binding.pry
      # @path<<files
    # end
      # file_name = "/db/mp3s"
   end

  def import(file_name) #imports the files into the library by creating songs from a filename
      import = Song.new_by_filename(file_name)
  end

end
