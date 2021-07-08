class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(path).find_all{|file_name| file_name.end_with?("mp3")}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}    
  end

end