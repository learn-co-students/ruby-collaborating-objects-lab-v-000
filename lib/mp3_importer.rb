require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.collect! {|index| index = index[21..-1]}
  end

  def import
    files.each do |index|
      new_song = Song.new_by_filename(index)
    end
  end

end

#test_music_path = "./spec/fixtures/mp3s"
#music_importer = MP3Importer.new(test_music_path)
#music_importer.import
