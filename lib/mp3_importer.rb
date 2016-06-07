
require_relative "artist.rb"
require_relative "song.rb"

class MP3Importer

  attr_accessor :path

  attr_reader :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(path).select {|f| !File.directory? f}
  end

  def import
    files
    @files.collect {|f| Song.new_by_filename(f)}
  end


end

