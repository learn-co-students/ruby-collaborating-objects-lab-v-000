require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3")
    @files.collect{ |f| f.gsub("#{path}/", "") }


  end



  def import
    files.each{ |f| Song.new_by_filename(f) }
  end

  # def self.new_from_filename(file)
  #   split_name = filename.split(" - ")
  #   artist_name = split_name[0]
  #   song_name = split_name[1].gsub(".mp3", "")
  #
  #   song = self.new
  #   song.name = song_name
  #   song.artist_name = artist_name
  #   song
  # end
  #
  # def self.create_from_filename(file)
  #   split_name = filename.split(" - ")
  #   artist_name = split_name[0]
  #   song_name = split_name[1].gsub(".mp3", "")
  #
  #   song = self.new
  #   song.name = song_name
  #   song.artist_name = artist_name
  #   song.save
  #   song
  #
  # end
end
