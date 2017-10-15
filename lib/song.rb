class Song
  attr_accessor :title, :artist

  def self.new_by_filename(filename)
    song = self.new
    song.artist = filename.split(" - ")[0]
    song
  end


end
