class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[@path + "/*.mp3"].collect do |path_name|
      path_name.gsub("./spec/fixtures/mp3s/", "")
    end
  end

  def import
    self.files.each do |song_path|
      song_array = song_path.split(" - ")
      artist = Artist.find_or_create_by_name(song_array[0])
      artist.save
      artist.add_song(Song.new(song_array[3]))
    end
  end


end
