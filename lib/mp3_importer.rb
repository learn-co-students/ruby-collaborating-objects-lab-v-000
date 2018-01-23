require 'pry'
class MP3Importer
  # build initialize..... remebre
  attr_accessor :path, :files

    def initialize(path)
      @path = path

      # binding.pry
        # import = self.
    end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    # @files = Dir.entries(@path)
    # @files.delete(".")
    # @files.delete("..")
    # @files
    # binding.pry
  #call the file to get 4
    #operate on the files to normalize the filename to not have the mp3 at the end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
       #go through each file + # it uses This from our methods.
    end
  #   #import imports the files into the library by creating songs from a filename
  #    Failure/Error: music_importer.import
  #    ArgumentError:
  #      wrong number of arguments (given 0, expected 1)
  #  list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
