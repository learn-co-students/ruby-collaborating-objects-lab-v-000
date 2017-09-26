class MP3Importer
  attr_accessor :files
  def initialize(path)
    @path=path
  end

  def files
    @files = Dir[ './mp3' ].select{ |f| File.file? f }
  end
  def import
    @files.each do |file|
      song = Song.new(file.split(" - ")[1])
      song.artist.name= Artist.find_or_create_by_name(file.split(" - ")[0])
    end
  end

end
