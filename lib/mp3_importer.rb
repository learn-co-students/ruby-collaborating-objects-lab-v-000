require 'pry'

class MP3Importer

  attr_accessor :files, :path

  def initialize(path)
    @path = path
  end

  def files
    path=@path+'/*.mp3'
    path_length=@path.split("/").length
    parsed_files = []
    Dir.glob(path).each do |f|

      parsed = f.split("/")
      stem = @path.split("/")
      parsed = parsed[path_length,1].join
      parsed_files << parsed
    end
    @files=parsed_files


  end

  def import
    self.files
    @files.each do |filename|
      song = Song.new_by_filename(filename)
      artist = song.artist
      artist.add_song(song)
    end
    # binding.pry
  end

  def path
    @path
  end

end
