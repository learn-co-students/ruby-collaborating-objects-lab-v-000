require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.entries(@path) #{|file| file.end_with?("mp3")} ... hmm this wasnt working?
    @files = @files.select {|file| file.end_with?"mp3"}
    #binding.pry ... found out the subdirectories '.' and '..' were being included so need to filter with that block
    #binding.pry
  end

  def import
    full_path_songs = files
    artists = []
    songs = []
    #artist = full_path_songs.split("-")[0]
    #song = full_path_songs.split("-")[1]
    full_path_songs.each do |file|
      artists << file.split("-")[0].strip
      songs << file.split("-")[1].strip
    end

    #binding.pry
    artists.each do |artist|
      new_artist = Artist.find_or_create_by_name(artist)
    end

  end

end