class MP3Importer
    attr_reader :path
  
  def initialize(path)
    @path = path 
  end
  
  def files
    Dir.chdir(@path) do | path |
        Dir.glob("*.mp3")
    end 
  end

  def import
    self.files.each do |file|
    Song.new_by_filename(file)
      #file_contents = file.split(" - ")
      #artist_name =  file_contents[0]
      #song_name =  file_contents[1]
      
      #a = Artist.find_or_create_by_name(artist_name)
      #a.add_song(Song.new(song_name))
    end
  end
  

end