class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename)
    parsed_filename = filename.split(' - ')
    song = self.new(parsed_filename[1])
    Artist.find_or_create_by_name(parsed_filename[0]).add_song(song)
    song
  end
end
