require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end
  # imports the files into the library by creating songs from a filename
  # the test checks Artist.all
  # 1 Iterate over the files and pass info to:
  # 2 Song.new_by_filename

  def import
    self.files.collect do |file_name|
      Song.new_by_filename(file_name)
    end
    #Artist.all
  end

  def files
    Dir.new(@path).collect do |file|
      if file.include?(".mp3")
        @files << file
      end
    end
    @files
  end

end

new_library = MP3Importer.new("./spec/fixtures/mp3s")

binding.pry

#.collect{|song| @@files << song.gsub(".mp3", "")}

#.gsub(".mp3", "")}

  #Dir["/db/mp3s"]

#song_files = MP3Importer.new("db/mp3s").files
#binding.pry
  #song_files.files -- collects and lists all songs, in an array, in artist - song_title - genre.mp3
