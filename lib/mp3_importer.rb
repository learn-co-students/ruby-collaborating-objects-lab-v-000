require 'pry'

class MP3Importer

  attr_accessor :path, :size

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*"].collect {|file| file.split("mp3s/")[1]}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end


# [1] pry(#<MP3Importer>)> Dir["#{@path}/*"].collect {|file| file.split("mp3s/")[1]}
# => ["Action Bronson - Larry Csonka - indie.mp3",
#  "Real Estate - Green Aisles - country.mp3",
#  "Thundercat - For Love I Come - dance.mp3",
#  "Real Estate - It's Real - hip-hop.mp3"]
