require "pry"

class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filenames = Dir.entries(@path)
    @filenames = filenames.delete_if { |filename| filename == "." || filename == ".."}
    @filenames
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end
  end
