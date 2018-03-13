require "pry"

class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files =[]
  end

  def files
    @files = Dir["#{@path}/*.mp3"]
    @files = @files.map do |file|
      file.split("/")[-1]
      end


    @files
  end



  def import
      files.each do |file|
        song = Song.new(file.split(" - ")[1])
        artist = Artist.find_or_create_by_name( file.split(" - ")[0])
        song.artist = artist
      end

  end

end
