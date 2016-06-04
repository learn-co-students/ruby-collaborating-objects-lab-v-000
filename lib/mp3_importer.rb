class MP3Importer

  attr_accessor :path 

  def initialize(path)
    @path = path
    @files = Dir.entries(path).select {|el| el.include?("mp3")}
  end


  def files
    @files
  end

  def  import 
    files.each do |filename|
    Song.new_by_filename(filename)
    end
  end





end