class Song
  attr_accessor :song, :file_name
  def initialize(song)
    @song = song
  end
  def name=(song)#
    @song = song
  end
  #def artist=(name)
      #self.artist= Artist.new(name)
  #end
  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song
  end
end
