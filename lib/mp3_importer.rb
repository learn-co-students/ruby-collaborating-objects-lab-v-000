require 'pry'

class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect {|file| file.split("/")[-1]}
  end

  def import
    self.files.each{|file| new_song_instance = Song.new_by_filename(file)}
  end

end
