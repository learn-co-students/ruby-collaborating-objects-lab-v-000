require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(path) do |file|
      files << file
    end
    files.select do |file|
      file[/\.mp3\b/]
    end
  end

  def import
    self.files.each do | filename |
      Song.new_by_filename(filename)
      # file_array = filename.split(/\s\-\s|\....\b/)
      # song = Song.new_by_filename(file_array[1])
      # song.artist = file_array[0]
    end
  end
end

var = MP3Importer.new("./spec/fixtures/mp3s")
puts var.files.inspect
# binding.pry
