class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file)
    split_file = file.split(/\A(.+)\s-\s(.+)\s-\s(.+).mp3\z/)
    new_song = Song.new(split_file[2])
    new_song.artist_name=(split_file[1])
    new_song
  end
end
