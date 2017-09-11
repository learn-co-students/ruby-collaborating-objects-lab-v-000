require 'pry'

class MP3Importer
  attr_reader :path, :files
  def initialize(path)
   @path = path
   @files = Dir.entries(path).grep(/.*\.mp3/)
  end

  def import
   @files.each {|file| Song.new_by_filename(file)}
   #Song.new_by_filename(Real Estate - Green Aisles - country.mp3)
  end
end

# ******FILES*******
# ["Real Estate - Green Aisles - country.mp3",
#  "Real Estate - It's Real - hip-hop.mp3",
#  "Action Bronson - Larry Csonka - indie.mp3",
#  "Thundercat - For Love I Come - dance.mp3"]
# ******FILES*******
