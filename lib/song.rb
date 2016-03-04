class Song
  attr_accessor :name, :title, :artist
  def initialize(name)
    @name = name
    @artist = artist
  end
  def self.new_by_filename(title)
    title.split(" - ")[1]
  end
end