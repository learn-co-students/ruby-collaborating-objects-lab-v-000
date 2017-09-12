class Song

  attr_accessor :artist, :add_song, :Artist, :name, :save


  def initialize(songname)
    @name = songname
    @@all = Artist.class_variable_get (:@@all)
    @@all_artists = []
  end

  def name=(songname)
    @name = songname
  end

  def name
    @name
  end

  def artist_name=(artist)
    #return Artist.find_or_create_by_name(artist)
    artist_name = artist.new(artist)
    return artist_name
  end

  def self.new_by_filename(file)
    song = file[0...-4]
    songsplit = song.split(" - ")
    artist = songsplit[0]
    songtitle = songsplit[1]
    new_song = Song.new(songtitle)
    @@all_artists = @@all.find(ifnone=nil) { |artist_object| artist_object.name == artist }
      if @@all_artists == nil
        new_artist = Artist.new(artist)
        new_artist.save
      else
        new_artist = @@all[0]
      end
    new_song.artist = new_artist
    #@artist_name = new_song.artist_name = artist
    new_artist.add_song(new_song)
    return new_song
  end



end
