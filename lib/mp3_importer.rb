require 'pry'
class MP3Importer

  attr_accessor :path, :songs

  def initialize(path)
    @path = path

  end

  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    files.each do |file|
      artist_name, song_name = file.split(" - ")
      Artist.find_or_create_by_name(artist_name)
      Artist.all.last.songs << Song.new_by_filename(file)
    end
  end
end
