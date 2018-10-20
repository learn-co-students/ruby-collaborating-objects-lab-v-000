class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def artist_name=(name)
    # This method will:
    # 1. Turn artist string passed in this method into an Artist object
    # 2. New Artist object will be assigned to @artist
    #binding.pry
    @artist = Artist.find_or_create_by_name(name)
    # 3. Assign this song instance to the songs in the artist object
    #binding.pry
    @artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    # This method will:
    # 1. Parse the file name
    parsed_file_name = file_name.split(" - ")
    # 2. Create a new song instance using the parsed string
    new_song = self.new(parsed_file_name[1])
    # 3. Associate the new song with artist from parsed string
    new_song.artist_name = parsed_file_name[0]
    # 4. Return the new song instance
    new_song
  end

end
