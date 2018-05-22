class MP3Importer
  attr_accessor :filenames, :path

  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    Dir.entries(path).each do |filename|
      @filenames << "#{filename}"
    end
    @filenames.delete_if {|x| x == "." || x == ".."}
  end

  def import
    @filenames.each do |filename|
      filename.split(" - ")[2] = artist_name
      Artist.find_or_create_by_name(artist_name)
      filename.split(" - ")[1] = song
      Artist.add_song(song)
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
    self
  end
end