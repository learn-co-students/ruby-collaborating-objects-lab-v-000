class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do | path |
      Dir.glob("*.mp3")
    end
  end

  def import
    files.each do |file_name| 
      song = Song.new_by_filename(file_name)
      artist = Artist.find_or_create_by_filename(file_name)
      artist.add_song(song)
    end  
  end

end