class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).select{|f|f.include?(".mp3")}
  end 
  
  def import
    files.each do |filename| 
      song = Song.new_by_filename(filename)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end
  
end