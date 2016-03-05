class Song
  attr_accessor :name, :title, :artist
  def initialize(name)
    @name = name
    @artist = artist
    @title = title
  end
  def self.new_by_filename
    name = self.split(" - ")[0]
    title = self.split(" - ")[1]
    song = [name, title]
    song = self.new
  end
end