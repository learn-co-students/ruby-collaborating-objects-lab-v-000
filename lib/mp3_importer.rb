require 'pry'

class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files = @files.join("")
    @files = @files.split("#{@path}/")
    @files.shift
    @files
  end

  def import
    self.files.each do |file_name|
    song = Song.new_by_filename(file_name)
    Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end





end
