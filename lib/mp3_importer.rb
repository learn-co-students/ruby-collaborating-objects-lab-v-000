
require 'pry'
# require_relative './artist'
# require_relative './song'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select do |filename|
      filename.include? ".mp3"
    end
  end

  def import
    self.files.each do |filename|
      # Parse the filename and store as array
      song_data = filename.split(' - ')

      artist = Artist.find_or_create_by_name(song_data[0])
      artist.save
      song = Song.new(song_data[1])
      artist.add_song(song)
    end
  end

  # def import
  #   files.each{|f| Song.new_by_filename(f)}
  # end

end
