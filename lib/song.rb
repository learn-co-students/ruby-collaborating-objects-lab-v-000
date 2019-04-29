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
    #  = Song.new(name.scan(/^(\w+ \w+)/).join)
    # new_instance = Song.new(name.scan(/^(\w+ \w+)/).join)
    # artist_name(name)
    new_instance.artist = Song.new(name.scan(/(\w+\s\w+\s\w+)/).join)

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
    Artist.add_song(song)
  end

end
