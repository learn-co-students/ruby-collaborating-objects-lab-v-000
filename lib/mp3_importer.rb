require 'pry'

class MP3Importer
  attr_accessor :path, :filename #:song_files #:name,

  @@songs = []

  def initialize(path)
    @path = path
    @filename = filename

  end

 #You should write code that responds to MP3Importer.new('./db/mp3s').import.

  def files
    Dir.entries(@path).find_all {|file| file.include?(".mp3")}
   # binding.pry
    #  [["Thundercat - For Love I Come - dance.mp3",
    #   "Real Estate - It's Real - hip-hop.mp3",
    #   "Action Bronson - Larry Csonka - indie.mp3",
    #   "Real Estate - Green Aisles - country.mp3"]]
  end


  def import
     filename.collect do |song|
       song = Song.new_by_filename(song)
       @@songs << song
     end
   end

end