class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files # find the path also ending with .mp3. Also making sure we are searching in the corrcet directory
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")} #
  end

  def import 
    files.each {|song| Song.new_by_filename(song)}
  end
end
