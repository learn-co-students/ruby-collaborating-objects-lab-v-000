class Artist

    attr_accessor :name

    @@all = []

  def initialize(name)
      @name = name
      @songs = []
    end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
     @@all.uniq! {|artist| artist.name}
    self
  end

  def self.all
    @@all
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
   end

  def self.create(name)
     self.new(name).tap {|artist| artist.save}
   end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
