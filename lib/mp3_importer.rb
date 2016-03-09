require 'pry'

class MP3Importer
  attr_accessor :path, :filename #:song_files #:name,

  #@@songs = []

  def initialize(path)
    @path = path
   # @filename = []

  end

 #You should write code that responds to MP3Importer.new('./db/mp3s').import.

  def files
    filename = Dir.entries(@path).find_all {|file| file.include?(".mp3")}
   # binding.pry
    #  [["Thundercat - For Love I Come - dance.mp3",
    #   "Real Estate - It's Real - hip-hop.mp3",
    #   "Action Bronson - Larry Csonka - indie.mp3",
    #   "Real Estate - Green Aisles - country.mp3"]]

    #binding.pry
  end


  def import
      self.files.each do |song|
     #filename.each do |song|
       Song.new_by_filename(song)
      # song =Song.new_by_filename(song)
       #@@songs << song

     end
   end

end