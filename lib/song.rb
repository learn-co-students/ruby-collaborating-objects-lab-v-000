class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name #set song name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) # set artist of new song
  end

  def self.new_by_filename(file)
    no_extension = file.split(/\A(.+)\s-\s(.+)\s-\s(.+).mp3\z/) # I hate regex with a passion. I found compiled this from a few different stack threads and I'm still not sure how it works.
    new_song = Song.new(no_extension[2])
    new_song.artist_name=(no_extension[1])
    new_song
  end
end
