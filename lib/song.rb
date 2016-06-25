class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    song= Song.new(name)
    song.artist = self
    song
  end

  # def self.new_by_filename(path)
  #   self.find_or_create_by_name(name)
  #   self.add_song(song)
  # end

end
