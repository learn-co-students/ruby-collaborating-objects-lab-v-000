class Song
  attr_accessor :name, :artist
  
  def initialize(title)
    @name = title
  end
  
  def self.new_by_filename(file)
    artist_name, title = extract_data(file)
    song = Song.new(title)
    song.artist = create_artist(artist_name)
    song
  end
  
  protected
  def self.extract_data(file)
      file.split(' - ')
  end

  def self.create_artist(artist_name)
    artist = Artist.all.find { |artist| artist.name == artist_name }
    
    if artist.nil?
      artist = Artist.new(artist_name)
      artist.save
    end
    
    artist
  end  
end