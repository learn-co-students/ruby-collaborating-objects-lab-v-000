require 'pry'

class MP3Importer

  attr_accessor :name, :files, :path

  def initialize(path) #=>accepts a file path to parse mp3 files from
    @path = path
  end

def files
  @files = Dir.entries(path).grep(/.*\.mp3/) #normalizes the file name to just the mp3 file name with no path
end

def import
  files.each {|file| Song.new_by_filename(file)} #iterates over files and imports them to the library by creating songs from a filename
end


end
