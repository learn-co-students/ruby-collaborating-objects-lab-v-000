class Song
  attr_accessor :name, :artist, :genre
  @@MP3Importer

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(file_name)
    filename_array = file_name.split(".").delete_at(0).split(" - ")
      song = self.new(filename_array[1])
      song.genre = filename_array[2]
      Artist.find_or_create_by_name(filename_array[0])

      song.artist = Artist.all.last
      song
  end
end