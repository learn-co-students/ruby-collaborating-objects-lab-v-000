class MP3Importer
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    Dir.entries(@path).reject { |file| File.directory? file }
  end
  
  def import
    list_of_files = self.files
    list_of_files.each do |file| 
      create_song_and_artist(file)
    end
  end
  
  protected
  def extract_data(file)
      file.split(' - ')
  end
  
  def create_artist(name)
    unless Artist.all.find { |artist| artist.name == name}
      artist = Artist.new(name)
      artist.save
    end 
  end
  
  def create_song_and_artist(file)
    name, title = extract_data(file)
    song = Song.new(title)
    create_artist(name)
  end
end