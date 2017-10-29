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

    if self.find(ar_name)
      self.find(ar_name)
    else
      self.create_by_name(ar_name)
    end

  end

  def self.all
    @@all
  end


  def self.find(ar_name)
    @@all.find {|each_artist| each_artist.name == ar_name}
  end

  def self.create_by_name(ar_name)
    self.new(ar_name).tap {|x| x.save}
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
