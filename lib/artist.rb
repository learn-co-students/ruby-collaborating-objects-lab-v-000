class Artist
  attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all.uniq
  end

  def self.find_or_create_by_name(name)
#    find(name) ? find(name) : create(name)
    if all.any?{|i| i.name == name}
      new_artist = all.find{|i| i.name == name}
    else
      new_artist = Artist.new(name)
      new_artist.save
    end
    new_artist
  end

#  def self.find(name)
#    all.find{ |artist| artist.name == name }
#  end

#  def self.create(name)
#    new(name).tap { |artist| artist.save }
#  end

  def print_songs
    self.songs.each do |i|
      puts i.name
    end
  end


end
