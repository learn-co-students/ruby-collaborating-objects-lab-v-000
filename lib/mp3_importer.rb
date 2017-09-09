require 'pry'
class MP3Importer

attr_reader :path

  def initialize(path)
    @path = path #where are you getting your songs from? Always need a path/location. Saves the path location/address
  end

  def files
    # Dir.each_child(@path) {|song| song.end_with?(".mp3")}
    Dir.entries(@path).reject {|file| !file.end_with?(".mp3")} #entries is not an iterator!
    # this method returns to us an array of filenames
  end

  def import
    #call .files in order to get array of filenames
    #from that array, create a Song/Artist instance for each filename
    #do this by ITERATING over
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

# http://ruby-doc.org/core-2.4.1/Dir.html#method-c-entries
#Dir.new('.').each {|file| puts file }
# OR
# Dir.entries(folder)
# OR
# To list all the entries in the current directory: Dir.entries('.')
# OR
# Dir["/path/to/search/*"]
# OR
# if you want to find all Ruby files in any folder or sub-folder:
# Dir["/path/to/search/**/*.rb"]
#
#   def import
#
#   end
end
