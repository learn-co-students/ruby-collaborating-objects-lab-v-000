class MP3Importer 
  attr_reader :path
  
  
  def initialize(path)
    @path = path
  end 
  
  def files
   @files = Dir.entries(@path)
   @files.delete_if {|file| file == "." || file == ".."}
  end 
  def import
    self.files.each do |f| 
      song = Song.new_by_filename(f)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end 
  end 
  
end 