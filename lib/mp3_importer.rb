class MP3Importer
  attr_accessor :path, :songs
  def initialize(path)
    @path = path
  end
  def files
    @filenames = Dir.entries(@path).select {|f| f.include?(".mp3")}
  end
  def import
    files
    @filenames.each do |file|
      song = Song.new
      song.name = file.split(" - ")[1]
      name = file.split(" - ")[0]
      song.artist_name=(name)
      Artist.find_or_create_by_name(name)
    end
  end
end
