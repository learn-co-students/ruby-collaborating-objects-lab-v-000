## This file will define a class that:
## 1. Parses a directory of files
## 2. Sends the filenames to a song class
## to create a library of music with artist_spec
## that are unique
## 2 Methods: self.files, self.import
## path attribute that gets set on initialization
require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def files
    list_of_filenames = Dir.entries(@path)
    list_of_filenames.delete(".")
    list_of_filenames.delete("..")
    list_of_filenames
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
