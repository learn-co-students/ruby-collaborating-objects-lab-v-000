require 'pry'
class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end


  def files
    Dir.entries(path).delete_if {|x|x == "." || x == ".."}
  end


  def import
    self.files.each do |filename|
      song_data = filename.split(" - ")
      artist = Artist.find_or_create_by_name(song_data[0])
      artist.save
      song = Song.new(song_data[1])
      artist.add_song(song)
    end
  end
end
