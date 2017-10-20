
class MP3Importer
  attr_accessor :path, :files, :songs

  def initialize(file)
    @path = file
    @files = []
  end

  def files
    Dir.entries(@path).each do |file|
      unless file == "." || file == ".."
        @files << file
      end
    end
    @files
  end

  def import
    files.each do |file|
      artist_name, song_name = file.split(" - ")
      Artist.find_or_create_by_name(artist_name)
      Artist.all.last.songs << Song.new_by_filename(file)
    end
  end

end
