require 'pathname'

class MP3Importer
  attr_accessor :path, :file_name

  def initialize(path)
  @path = path
  end

  def files
    Dir.entries(path).select {|f| !File.directory? f}
  end

  # Dir.entries(path).select {|f| File.file?(f)}
    # File.basename(".mp3")
    # Pathname.glob(path)
    # Dir.entries(path).reject {|f| File.directory? f}
    # file = Dir.entries("mp3")
    # file = Pathname("mp3")
    # file = Dir.entries("./spec/fixtures/mp3s")
    # file = Pathname("./spec/fixtures/mp3s")

  def import
    #  4.times {Song.new_by_filename(file_name)} "this works but hardcoded to 4 times"
    files.each {|filename| Song.new_by_filename(filename)}
  end
end

# Example:
# class MP3Importer
#   def import(list_of_filenames)
#     list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
#   end
# end
