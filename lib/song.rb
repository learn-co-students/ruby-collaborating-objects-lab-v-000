class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    name_of_artist = file.split("-")[0].strip
    song_name = file.split("-")[1].strip
    song = Song.new(song_name)
    song.artist_name = name_of_artist

    #binding.pry
     #Failure/Error: expect(new_instance.artist.name).to eq('Michael Jackson')
     #NoMethodError:
       #undefined method `name' for nil:NilClass
     #RETURN THE OBJECT HOLY COW
    song

  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    self.artist = artist
  end

end