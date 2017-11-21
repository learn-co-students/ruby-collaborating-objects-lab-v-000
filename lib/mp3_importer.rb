require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    music_importer = Dir.glob("#{@path}/*")
    music_importer.map! do |file|
      file.slice!"./spec/fixtures/mp3s/"
      file
    end
  end

def import
  self.files.each do |file|
    file_array = file.split(' - ')
    new_artist = Artist.new(file_array[0])
    if !Artist.all.include?(new_artist)
      Artist.all << new_artist
    end
  end
end


end
