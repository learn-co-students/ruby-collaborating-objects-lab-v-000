require 'pry'

class MP3Importer

  attr_accessor :path, :songs

@@songs = []

  def initialize(path)
    self.path = path
  end

  def files
    song_path_array = Dir.glob("#{path}/*.mp3")
    #binding.pry
    song_path_array.each {|song_path| song_path.gsub!("./spec/fixtures/mp3s/",'')}
    
  end

  def import
    self.files.each {|filename| @@songs << Song.new_by_filename(filename)}
    #uses song class to make new songs and assign them to artists
    #so that test can check for a total number of artists imported
  end


end