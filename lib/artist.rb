class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def add_song(song_instance)
    @songs << song_instance
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    find = @@all.detect {|artist_instance| name == artist_instance.name}
    if find
      find
    else
      # self.new(name)
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end

  # def self.find_or_create_by_name(name)
  #    find = @@all.detect do |artist_instance|
  #     artist_name = artist_instance.name
  #     if artist_name != nil
  #       artist_instance
  #     elsif artist_name == name
  #       self.new(name)
  #     end
  #   end
  # find.save
  end

  def print_songs
    @songs.each do |song_instance|
      puts "#{song_instance.name}"
    end
  end

end
