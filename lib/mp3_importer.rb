class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  # Since we have to send the filenames to the Song class, we'll end up calling
  # the following code in the #import method: Song.new_by_filename(some_filename).
  # This will send us to the Song class, specifically Song.new_by_filename.

  def import
   files.each{|file| Song.new_by_filename(file)}
  end

  # You should write code that responds to MP3Importer.new('./db/mp3s').import.
  # Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |file| file.gsub("#{path}/", "") }
  end
end
