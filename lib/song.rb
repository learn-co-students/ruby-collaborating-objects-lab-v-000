class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    #@artist = artist
  end

  # def self.new_with_artist(title, artist)
  #   Song.new(title)
  #   @artist = artist
  # end

  def self.new_by_filename(file_name)
    artist = file_name.split('-')[0].strip
    title = file_name.split('-')[1].strip
    genre = file_name.split('-')[2].strip
    #new_with_artist(title, artist)
    #Artist.find_or_create_by_name(artist)
    #Artist.find_or_create_by_name(artist).song << title
    #Artist.new(artist)
    Song.new(title)
    self.artist.name = artist
    #binding.pry
    #Song.new(title)
    #Song.new(title).artist = Artist.new(artist)

    #binding.pry
  end

end
