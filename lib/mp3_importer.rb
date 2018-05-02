class MP3Importer
 
 attr_accessor :path
  
  def initialize(path)
    @path = path 
  end

  def files 
    song_files = []
    Dir.new(self.path).each do |file|
      song_files << file if file.length > 4
    end
    song_files
  end

  def import
    self.files.each do |filename| 
    Song.new_by_filename(filename) 
  end
 end
end