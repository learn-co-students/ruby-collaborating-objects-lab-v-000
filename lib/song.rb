class Song
  attr_accessor :name, :artist

    def self.new_by_filename(filename)
      line = filename.strip.slice(0, filename.length - 4)
      arr = line.split(" - ")
      a_name = arr[0]
      s_name = arr[1]
      artist = Artist.new(a_name).save
  
      s = Song.new(s_name)
      artist.add_song(s)
      s.artist = artist
      s
    end
  
  def initialize(name)
    @name = name
  end
end