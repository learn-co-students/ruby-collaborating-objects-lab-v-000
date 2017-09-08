require 'pry'
class MP3Importer
  attr_accessor :path
  attr_reader :all_files

  def initialize(path)
    @path = path
    @files = []
    @all_files = files
  end

  def files
    files = Dir.glob(@path + "/*")
    @all_files = files.collect { |file| file.split("/").last }
  end

  def import
    @all_files.each do |file|
      parts = file.split(" - ")
      artist = Artist.find_or_create_by_name(parts[0])
      artist.add_song(parts[1])
    end
  end
end
