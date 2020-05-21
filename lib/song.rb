class Song
  attr_accessor :name, :artist
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.new_by_filename(file)

    array = file.split (' - ')
    song = Song.new(array[1])

    song.artist = Artist.find_or_create_by_name(array[0])
    song
  end
  def artist_name=(name)
    Artist.all.each do |artist|
      if artist.name == name
        self.artist = artist
      end
    end
    if self.artist == nil
        self.artist =   Artist.new(name)
    end
  end

end
