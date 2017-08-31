require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    songs = Dir.glob("#{path}/*")
    normalized_songs = songs.map do |song|
      song.scan(/[A-Z].*/)
    end
    normalized_songs.flatten
  end

  def import
    songs = self.files.map do |song_str|
      Song.new_by_filename(song_str)
    end
    songs.each do |song|
      new_artist = Artist.find_or_create_by_name(song.artist.name)
      new_artist.add_song(Song.new(song.name))
    end
  end

end