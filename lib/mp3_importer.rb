require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path #Dir.entries("db/mp3s")
  end

  def files
    # binding.pry
    @files = Dir.entries(@path).reject{|entry| entry == "." || entry == ".."}
  end

  def print_files
    @files
  end

  def import
    # self.files
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
      # splice = filename.split(/( - |\.)/) #=> ["artist", " - ", "title", " - ", "genre", ".", "mp3"]
      # new_instance = Song.new_by_(splice[2])
  #     Song.new_by_filename(filename)
  #     # new_instance.artist = splice[0]
  #     # new_instance.genre = splice[4]
  #     # new_artist = Artist.find_or_create_by_name(new_instance.artist)
  #     # new_artist.add_song(new_instance)
  #   end
  # end

end
