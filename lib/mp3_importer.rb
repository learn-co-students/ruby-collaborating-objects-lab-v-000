class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if do |x|
       x.start_with? "."
     end
  end

  def import
    files.each do |file|
      artist_name, song_name = file.split(" - ")
      Artist.find_or_create_by_name(artist_name)
      Artist.all.last.songs << Song.new_by_filename(file)
    end
  end

end
