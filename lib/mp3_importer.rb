require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @@files_dir = Dir.entries(path)
    @@files_dir.delete_if {|file| !file.match(/[a-z]+.mp3/) }
    @@files_dir
  end

  def import
    # binding.pry
    @@files_dir.each {|mp3| Song.new_by_filename(mp3)}
  end

end
