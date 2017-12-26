require 'pry'

class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
    @songs = []
  end

  def files
    @songs = Dir.entries(@path).delete_if {|song| song == "." || song == ".."}
    @songs
    #binding.pry
  end

  def import
    song_array = self.files
    #binding.pry
    song_array.each{|filename| Song.new_by_filename(filename)}

  end

end
