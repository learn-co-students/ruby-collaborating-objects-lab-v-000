require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    Dir["#{@path}/*.mp3"].collect do |element|
      element.gsub("#{@path}/", "")
    end
  end
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
  end
  end
end
    #file names into song object
    #remember what kind of method import is
  #return value of .files method
  
#   ["Action Bronson - Larry Csonka - indie.mp3",
# "Real Estate - Green Aisles - country.mp3",
# "Thundercat - For Love I Come - dance.mp3",
# "Real Estate - It's Real - hip-hop.mp3"]