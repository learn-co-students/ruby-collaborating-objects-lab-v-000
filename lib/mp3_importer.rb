class MP3Importer

  attr_accessor :path
  @@files = []

  def initialize(path)
    @path = path
  end

  def files
    Dir[@path+"/*"].each {|file| @@files << file[@path.length+1, file.length-@path.length]}
    @@files
  end

  def import
    @@files.each do |file|
      artist = Artist.find_or_create_by_name(file.split(" - ")[0])
      artist.add_song(Song.new(file.split(" - ")[1]))
    end
  end

end
