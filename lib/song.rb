class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(array_of_files)
    array_of_files.each do |f|
      song_file = f.split(" - ")
      song = self.new(song_file[1])
      self.artist = artist_name(song_file[0])
      binding.pry
    end
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
    Artist.add_song(name)
  end
end
