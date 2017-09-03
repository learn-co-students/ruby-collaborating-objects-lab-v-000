require 'pry'

class MP3Importer

  attr_accessor :path, :file_name
  @path = []

  def initialize(path) #accepts file path to parse mp3 files
    @path = path
  end

  def files #loads all mp3 files in the path directory
    #normalizes the filename to just the mp3 filename w/no path
      Dir.glob("*.mp3"){|file|
      file = File.new(file_name)
      file_name="#{song} - #{artist} - .mp3"
      @path<<file_name}
      binding.pry
   end

  def import(file_name)
    	Song.new_by_filename(filename)
  end

end
