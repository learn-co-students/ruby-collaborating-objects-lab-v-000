require 'pry'
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).select{|file| file.include?(".mp3")}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
      binding.pry
    end
  end

end



# MP3Importer.new('./db/mp3s').import

# puts Dir.glob("spec/fixtures/mp3s/*").size # for directories
# Dir.glob("**/*") # for all files
# spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3

# thing = Dir.entries("spec/fixtures/mp3s").select{|file| file.include?(".mp3")}
# puts thing
# binding.pry
