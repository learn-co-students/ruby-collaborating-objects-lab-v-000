class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    this_file = file.chomp(".mp3")
    file_arr = this_file.split(" - ")
    song = Song.new(file_arr[1])
    song.artist = Artist.find_or_create_by_name(file_arr[0])

    song
  end

end