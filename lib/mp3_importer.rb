class MP3Importer
  attr_reader :path


  def initialize(file_path)
    @path = file_path
  end

  def files
    file_array = []
    Dir.foreach(@path) { |filename| file_array << filename if filename.include? "mp3"}
    #puts @file_array
    file_array
  end
#MP3Importer.new('./db/mp3s').import.
  def import
     files.each {|filename| Song.new_by_filename(filename) }
  end
end
