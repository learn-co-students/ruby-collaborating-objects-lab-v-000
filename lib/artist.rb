class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)

    @name = name
    @songs = []
    save

  end

  def add_song(song)

    self.songs << song

  end

  def save

    self.class.all << self

  end

  def self.all

    @@all

  end

  def self.find_or_create_by_name(name)

    if (self.all.any? { |artist| artist.name == name  })
      self.all.detect { |artist| artist.name == name  }
    else
      Artist.new(name)
    end

  end

  def print_songs

    self.songs.each { |song| puts song.name}

  end

end
