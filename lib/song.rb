class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new_by_name(name)
    @@all << song
    song
  end

  def self.new_by_filename(file_name)
    file = file_name.split("-")
    artist = file[0].strip
    song = file[1].gsub(".mp3", "").strip
       #binding.pry
    new_song = self.create_by_name(song)
    new_song.artist_name = artist
  end



end
