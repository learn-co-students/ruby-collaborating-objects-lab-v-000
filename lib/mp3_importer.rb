class MP3Importer
  
  attr_accessor :path
  @@path = []
  @@files = []

  def initialize(path)
    @path = path
  end
  
  def files
    path = @path 
    files = Dir.entries(path)
    files = files.select {|item| item.include?(".mp3")}
    @@files = files
  end 
  
  def import
    files = @@files 
    files.each {|song| Song.new_by_filename(song)}
  end 
  
end 