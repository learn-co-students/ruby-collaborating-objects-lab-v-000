require 'pry'

class MP3Importer
  attr_accessor :path, :song

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    @files = Dir.glob("#{@path}/*.mp3").collect do |filename|
      filename.gsub("#{@path}/","") #=> Action Bronson - Larry Csonka - indie.mp3
    end
  end

  def import
    self.files.each do |file|
      new_song = Song.new_by_filename(file)
      #binding.pry
      new_song.artist.songs << new_song
    end

  end

end
