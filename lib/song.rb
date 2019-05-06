class Song
  attr_accessor :artist, :name, :file_name, :mp3mporter
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.new_by_filename(name)
    new_instance = Song.new(name.scan(/(\w+\s\w+\s\w+)/).join)
    artist_instance = Artist.new(name.scan(/^(\w+ \w+)/).join)
    new_instance.artist = artist_instance
    new_instance
  end

  # We'll also want to associate that new song with an artist. To do this we'll use a helper method: `Song#artist()`.

  # We can set an individual instance of Song equal to an instance of the Artist class like this:
  # ninetynine_problems = Song.new("99 Problems", "rap")
  # jay_z = Artist.new("Jay-Z")
  #
  # ninetynine_problems.artist = jay_z
  #
  # ninetynine_problems.artist.name
  #   # => "Jay-Z"

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
    Artist.add_song(name)
  end
end
  #
  # def artist(name)
  #   name.scan(/^(\w+ \w+)/).join
  #     # self.artist.name
  # end

  # crazy_in_love.artist_name
  #   # => "Jay-Z"
  #
  # Much better. Notice that we used the self keyword inside the #artist_name method to refer to the instance of
  # Song on which the method is being called. Then we call #artist on that song instance.
  # This would return the Artist instance associated to the song. Chaining a call to #name after that is equivalent
  # to saying: call #name on the return value of self.artist, i.e. call #name on the artist of this song.
