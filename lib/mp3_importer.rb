require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(path) { |file| files << file if file.include?(".mp3") }
    files
  end

  def import
    files.each do |file|
      file_array = file.split(%r{ - })
      file_array[-1].slice!(".mp3")
      artist = Artist.find_or_create_by_name(file_array[0])
      artist.add_song(file_array[1])
    end
  end
end

files = MP3Importer.new('./db/mp3s')
files.files
