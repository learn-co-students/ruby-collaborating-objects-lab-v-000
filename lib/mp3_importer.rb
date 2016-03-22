class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
    @filenames =[]
  end
  def files
    Dir.entries(@path).select {|f| f.include?(".mp3")}
  end
  def import
    @filenames.each do |file|
      song = Song.new
      song.name = file.split("-")[1]
      name = file.split("-")[0]
      song.artist_name=(name)
      song.artist.save
    end
  end
end
