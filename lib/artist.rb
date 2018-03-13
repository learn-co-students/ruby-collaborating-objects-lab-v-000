class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(input_song_name)
    self.songs << input_song_name
  end

  def self.find_or_create_by_name(artist_name)
    answer = nil
    all.each do |artist|
      if artist.name == artist_name
         answer = artist
      end
    end
    if answer == nil
      answer = self.new(artist_name)
      answer.save
    end
    answer
  end

  def print_songs
    with_n = ""
    @songs.each do |e|
      with_n += e.name + "\n"
    end
    print with_n
  end

end
