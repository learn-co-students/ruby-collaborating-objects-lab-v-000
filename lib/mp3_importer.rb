require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select { |f| !File.directory? f }
  end
  #File.directory? if file is folder or file, if you don't use this the array
    #ends up with "." and ".." as two elements
  #also Dir.entries resource
    #https://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
#test_music_path = "./spec/fixtures/mp3s"
#music_importer = MP3Importer.new(test_music_path)
#binding.pry
