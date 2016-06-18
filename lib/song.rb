class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    if artist
      @artist = artist
    end
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]

    array_of_artists = Artist.all####
    array_of_artist_names = []#####

    array_of_artists.each do |artist|####
        array_of_artist_names << artist.name####
    end####

    if !array_of_artist_names.include?(artist_name) ######
      artist = Artist.new(artist_name)
    else###
      index = array_of_artists.find_index {|artist| artist.name == artist_name}
      artist = array_of_artists[index]
    end####

    song = self.new(song_name, artist)
    song
  end

end
