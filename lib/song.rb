class Song
  attr_accessor :name
  attr_reader :artist
  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist=artist
  end

  def self.new_by_filename(file_name)
    puts new_instance = self.new(file_name.scan(/ - (.+) - /).join)
    new_instance.artist = Artist.new(file_name.scan(/(^[a-zA-Z\s]+) /).join)
    new_instance.artist.add_song(new_instance)
    new_instance
  end
end