class Song
  attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def artist
    artist = Artist.new(name)
  end

  def self.new_by_filename(file_name)
   song = self.new(file_name.split(" - ")[1])
   artist = Artist.new(file_name.split(" - ")[0])
   Artist.all << artist
 end

end
