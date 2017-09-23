require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(self.path).select { |f| !File.directory? f}
  end

  def import
    files = self.files
    files.each do |filename|
      song = Song.new_by_filename(filename)
      # song.artist.add_song(song)
    end
  end

end
