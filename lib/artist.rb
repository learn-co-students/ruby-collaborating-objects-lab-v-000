require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    self.songs << title
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create_by_name(artist_name)
    self.new(artist_name)
  end

  def self.find_by_name(artist_name)
    self.all.detect {|item| item.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end

  def print_songs
    self.songs.each { |name| puts "#{name.artist}" }
  end


end
