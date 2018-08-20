class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = 'Black or White'
    song = Song.new(song_name)
  end


end
