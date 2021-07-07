class MP3Importer
  attr_accessor :filename, :path
  
  def initialize(path)
    @path = path
  end
  
  def files
   entries = Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  def import
    filenames =  self.files
    filenames.each do |filename|
    Song.new_by_filename(filename)
    end
  end
end