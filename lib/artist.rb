class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(n) @name=n; @songs=[] end
  def save() @@all<<self; end
  def self.all() @@all end
  def add_song(s) @songs<<s; s.artist=self; end
  def self.find_or_create_by_name(n) r=@@all.find { |a| a.name==n }
    if r==nil
      r=Artist.new(n)
      @@all<<r
    end
    r
  end
  def print_songs() @songs.each { |s| puts s.name } end
end
