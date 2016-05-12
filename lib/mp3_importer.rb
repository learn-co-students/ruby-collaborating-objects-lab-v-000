# Attributes
# Have a name for list of songs
# Have lists of songs

# Behavior
# Parse current list of songs
# Recreate list of song with new collection array

# test_music_path = "../spec/fixtures/mp3s"

# require 'pry'
# require_relative './song.rb'
# require_relative './artist.rb'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir.glob("#{@path}/*")
    song_list = file_list.collect {|file| file.split("#{@path}/").pop}
  end

  #def files
    #file_list = []
    # Dir.foreach(path) do |filename|
    #     file_list << filename
    # end
    # file_list.grep(/\w+\.mp3/)
    #binding.pry
  #end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end

end

  # test_music_path = "./spec/fixtures/mp3s"
  # music_importer = MP3Importer.new(test_music_path)
  # music_importer.files.size
  # music_importer.import
