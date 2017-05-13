require 'pry'
require_relative 'artist.rb'
require_relative 'song.rb'

class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir["#{@path}/*.mp3"]
    @files.collect {|file| File.basename file}
    #=> @files =
    #=> ["Action Bronson - Larry Csonka - indie.mp3",
    #=> "Real Estate - Green Aisles - country.mp3",
    #=> "Real Estate - It's Real - hip-hop.mp3",
    #=> "Thundercat - For Love I Come - dance.mp3"]
  end

  def import
    files.each {|file|
      Song.new_by_filename(file)
}
  end

end
