require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.entries(path).collect do |entry|
      if entry.include?(".mp3")
        files << entry
      end
    end
    files
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end

end

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
puts music_importer.files