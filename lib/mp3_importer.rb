require 'pry'

class MP3Importer

  attr_accessor :path, :songs

  @@songs = []

  def initialize(path)
    self.path = path
  end

  def files
    song_path_array = Dir.glob("#{path}/*.mp3")
    song_path_array.each {|song_path| song_path.gsub!("./spec/fixtures/mp3s/",'')}
  end

  def import
    self.files.each {|filename| @@songs << Song.new_by_filename(filename)}
  end

end