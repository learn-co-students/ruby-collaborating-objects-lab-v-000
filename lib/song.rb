class Song
  attr_accessor :name, :artist, :genre

  def initialize(title)
    @name = title
  end

  def self.new_by_filename(file_name)
    song = file_name.chomp(".mp3").split(" - ")
    binding.pry
    @name = song[1]
    Artist.find_or_create_by_name(song[0])
    Artist.add_song(song[0])
    @genre = song[2]
  end

end