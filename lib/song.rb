class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(/\s-\s|.\w+$/)
    song = self.new(file[1]).tap do |s|
      s.artist_name = file[0]
    end
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end
end