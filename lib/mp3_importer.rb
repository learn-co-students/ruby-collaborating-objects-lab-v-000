class MP3Importer
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |file| file == "." || file == ".."}
  end
  
  def import
    self.files.each do | filename |
      song = Song.new_by_filename(filename)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end
end