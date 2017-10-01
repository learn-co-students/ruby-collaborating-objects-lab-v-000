require_relative 'artist.rb'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    array_of_files = Dir["#{@path}/**/*.mp3"]
    normalized_files = array_of_files.collect do |file|
      broken_file = file.split("#{@path}/")
      broken_file[1]
    end
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
      song.artist.add_song(song)
    end
  end

end

#
