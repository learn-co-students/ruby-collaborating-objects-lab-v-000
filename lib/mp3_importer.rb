class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").map{|filename|filename.gsub("#{path}/", "")}
  end

  def import
    files.each{|filename|Song.new_by_filename(filename)}
  end
end

#TRYING TO UNDERSTAND THE RELATIONSHIP...
#my_music_files = MP3Importer.new(/path here/).import
#song .new_by_filename parses each filename
#song creates a new instance of song and assigns the song string to itself
#song associates the new song instance with an artist by calling the
#Song #artist=(artist) method. This method is responsible for taking the
#artist string and sending it to the Artist .find_or_create_by_name(name) method
#artist either returns an existing artist object with that name or
#it creates a new artist object.
