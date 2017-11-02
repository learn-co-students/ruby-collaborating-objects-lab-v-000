require 'pry'
class MP3Importer

  def initialize(filepath)
    @filepath = filepath
    @files = []
  end

  def path
    @filepath
  end

  def files
    #loads mp3 files, edits filename
    files = []
    Dir["#{@filepath}/*.mp3"].each do |file|
      files << File.basename(file)
    end
    @files = files
  end

  def import
    #imports files by creating songs from a filename
    self.files.each do |filename|
      song = Song.new(filename.split(" - ")[1])
      artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
      song.artist = artist
      artist.add_song(song)
    end
  end

end
