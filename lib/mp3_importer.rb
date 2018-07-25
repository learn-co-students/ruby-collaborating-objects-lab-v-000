require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(filepath)
    @path = filepath
  end

  def files #loads all mp3 files (excludes non-song files)
    @files = Dir.entries(@path)
    #@files.select {|file| /[".mp3"]\z/ } #???
      #only include files with .mp3 ending!
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import #filename -> songs -> library
    self.files.each do |file|
    song = Song.new_by_filename(file)
    Artist.all << song.artist unless Artist.all.include?(song.artist)
  end
end

end
