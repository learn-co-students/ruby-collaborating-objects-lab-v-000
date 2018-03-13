class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    propeties = filename.gsub(".mp3","").split(" - ")
    new_song = Song.new(propeties[1])
    Artist.find_or_create_by_name(propeties[0]).add_song(new_song)
    new_song
  end
end
