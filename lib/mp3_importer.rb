require 'pry'

class MP3Importer
  attr_accessor :path

def initialize(path)
  @path = path
end

def files
  # song = self.new
  # song.title = filename.split(" - ")[1]
  file_name = Dir.entries(@path)
  list = file_name.select do | file |
      # file.split("-")[2].split(".")
    file.include?("-")
    #  || file.include?(".")
  end
  list
  # song_title = file_name.split(" - ")[1]

  # path << song
end

def import
  files.each{ |filename| Song.new_by_filename(filename)}
end

end
