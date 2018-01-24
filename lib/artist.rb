class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @all = []
  end

  def songs
    @all
  end

  def add_song(song)
    @all << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    answer = nil
    @@all.each do |possible_artist|
      if possible_artist.name == artist
        answer = possible_artist
      end
    end
    if answer == nil
      answer = Artist.new(artist)
      answer.save
    end
    answer
  end

  def print_songs
    @all.each do |song|
      puts song.name
    end
  end

end
