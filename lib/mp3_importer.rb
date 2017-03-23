require 'pry'

class MP3Importer

  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end

  def files
    @songs = Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import
    @songs.each {|song| Song.new_by_filename(song)}
  end

end
