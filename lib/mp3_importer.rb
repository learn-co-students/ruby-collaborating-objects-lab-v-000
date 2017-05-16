require_relative "mp3_file.rb"

class MP3Importer
  attr_accessor :path

  def initialize(path= "db/mp3s")
    @path = path
    @dir = Dir.new path
  end

  def path
    @path
  end

  def files
    @dir.select {|file| file[0].match /\w/}
  end

  def import
    files.each do |file|
      mp3_file = MP3File.new(file)
      song = Song.new(mp3_file.song)
      artist = Artist.find_or_create_by_name(mp3_file.artist)
      artist.add_song(song)
      #artist.save
    end
  end

end
