class Song
<<<<<<< HEAD
  attr_accessor :name, :artist, :mp3_importer
  @@all = []
=======
  attr_accessor :name, :artist

>>>>>>> be1c48b7ae6a8194bfc92c0ca34af8bd5a2597b2
  def initialize(name)
    @name = name
  end

  def self.new_by_name(name)
<<<<<<< HEAD
    song = self.new(name)
=======
    song = self.new
    song.name = name
>>>>>>> be1c48b7ae6a8194bfc92c0ca34af8bd5a2597b2
    song
  end

  def self.create_by_name(name)
    song = self.new_by_name(name)
    @@all << song
    song
  end

<<<<<<< HEAD
  def self.new_by_filename(file)
    file = file.split(" - ")
    artist = file[0]
    song = file[1].gsub(".mp3", "")
       #binding.pry
    new_song = self.create_by_name(song)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(new_song)
    new_song
  end
=======
  def self.new_by_filename(file_name)
    file = file_name.split("-")
    artist = file[0].strip
    song = file[1].gsub(".mp3", "").strip
       #binding.pry
    new_song = self.create_by_name(song)
    new_song.artist_name = artist
  end



>>>>>>> be1c48b7ae6a8194bfc92c0ca34af8bd5a2597b2
end
