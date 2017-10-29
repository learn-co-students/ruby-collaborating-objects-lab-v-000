class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name=name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(ar_name)
    ret_artist = find(ar_name)
    if ret_artist != nil
      ret_artist
    else
      new_artist = create_by_name(ar_name)
    end

  end

  def self.all
    @@all
  end


  def self.find(ar_name)
    artist = @@all.find {|each_artist| each_artist.name == ar_name}
    artist
  end

  def self.create_by_name(ar_name)
    new_artist = self.new(ar_name)
    new_artist.save
    new_artist
  end

  def add_song(song_item)
    @songs << song_item
    song_item.artist = self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def songs
    @songs
  end

end
