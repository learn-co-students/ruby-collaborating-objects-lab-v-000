require 'pry'
class MP3Importer
  attr_accessor :path, :files, :songs
  def initialize(file)
    @path = file
    @files = []
  end

  def files
    # @files.map do |file|
    # I don't know what I'm doing. From docs and StackOverflow:
    Dir.entries(@path).each do |file|
      unless file == "." || file == ".."
        # binding.pry
        @files << file
      end
    end
    @files
  end

  def import
    # imports the files into the song library by creating songs from a filename
    files.each do |file|
      artist_name, song_name = file.split(" - ")
      Artist.find_or_create_by_name(artist_name)
      Artist.all.last.songs << Song.new_by_filename(file)
      #   Artist.all.uniq << Artist.find_or_create_by_name(artist_name)
      #   Artist.all.last.songs << Song.new_by_filename(song_name)
        # Artist.all.last
      # Artist.all.each do |
      # << Song.new_by_filename(file)
      # binding.pry
    end
  end

end
