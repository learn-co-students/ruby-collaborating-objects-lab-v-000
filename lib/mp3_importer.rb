

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    files
  end

  def files
    @files = Dir.entries(selfpath).delete_if { |i| i.end_with?("mp3") == false }
  end

  def import
    self.files.each  do |f|
      data = f.split(" - ")
      artist = Artist.find_or_create_by_name(data[0])
      song = Song.new(data[1])
      artist.add_song(song)
    end
  end
end
