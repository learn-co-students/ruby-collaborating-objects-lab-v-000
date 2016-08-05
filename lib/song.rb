class Song
  attr_accessor :name, :artist
  @@name = ""
  @@artist = ""
  @@art = ""

  def initialize(name)
    @name = name
    @artist = @@art
  end

  def self.artists_name
    @@art = Artist.find_or_create_by_name(@@artist, @@name)
  end

  def self.new_by_filename(file_name)
    file_name.chomp!(".mp3")
    array = file_name.split(" - ")
    @@artist = array[0]
    @@name = array[1]
    self.artists_name
    song = self.new(array[1])

  end

end
