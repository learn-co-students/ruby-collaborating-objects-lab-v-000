class Song
  attr_accessor :name, :artist
  def initialize(n) @name=n; @artist=nil end
  def self.new_by_filename(fn) a=fn.split(" - "); r=self.new(a[1].chomp(".mp3"))
  r.artist=Artist.find_or_create_by_name(a[0]); r.artist.add_song(r); r end
end
