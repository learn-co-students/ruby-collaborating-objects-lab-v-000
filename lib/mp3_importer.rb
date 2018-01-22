require "pry"

class MP3Importer

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    file_array = Dir.entries(@path)
    answer = []
    file_array.each {|file_name| answer << file_name if file_name.match(/\w/)}
    answer
  end

  def import
    files.each do |file_name|
      categorized_array = file_name.split(" - ")
      new_artist = Artist.find_or_create_by_name(categorized_array[0])
      new_song = Song.new(categorized_array[1])
      new_song.artist = new_artist
      new_artist.songs << new_song
    end
  end
end
