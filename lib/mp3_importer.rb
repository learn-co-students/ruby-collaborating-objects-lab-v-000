class MP3Importer
  attr_accessor :path

  #Your MP3Importer class should also have a path attribute that gets set on initialization.
  def initialize(path)
    @path = path
  end

  #You should write code that responds to MP3Importer.new('./db/mp3s').import. Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.
  def files
    Dir.entries(path) - %w[. ..]
  end

  #Since we have to send the filenames to the Song class, we'll end up calling the following code in the #import method: Song.new_by_filename(some_filename)
  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
