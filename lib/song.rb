class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = parse_filename(filename)
    artist = data[0]
    song = data[1]
    genre = data[2]
    s = Song.new(song)
    a = Artist.find_or_create_by_name(artist)
    s.artist = a
    a.songs << s
    s
  end

  private

  def self.parse_filename(filename)
    filename.scan(/[^-(.mp3)]/).join.split('  ')
  end
end
